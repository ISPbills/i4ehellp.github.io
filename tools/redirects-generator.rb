#! /usr/bin/env ruby

TOML_LINK_REGEX = /^(?<direction>(to|from)).*?["'](?<link>.*?)["']/

def fatal(message)
	puts "FATAL! #{message}"
	exit -1
end

def warning(message)
	puts "WARNING: #{message}"
end

def configure
	# defaults
	input = 'netlify.toml'
	output = 'netlify-redirects.html'
	subdomain = 'c66-help-dev.netlify.app'
	$verbose = false

	# parse args
	args = []
	::ARGV.each { |arg| arg.strip.gsub(/^-*/, '').split('=').each { |part| args << part } }

	# handle verbose
	args.delete_if do |arg|
		if %w[v verbose].include?(arg)
			$verbose = true
			next true
		end
		false
	end
	args.each_slice(2) do |key_value|
		key = key_value[0].strip
		value = key_value[1].strip
		input = value if %w[i input].include?(key)
		output = value if %w[o output].include?(key)
		subdomain = value if %w[s subdomain].include?(key)
	end
	root_path = ::Dir.pwd
	# handle args
	input = "#{root_path}/#{input}" unless input.start_with?('/')
	output = "#{root_path}/#{output}" unless output.start_with?('/')
	[input, output, subdomain]
end

def perform(input, subdomain)
	# load input file
	contents = IO.read(input)
	# process contents
	links = { from: [], to: [] }
	all_links = {}
	contents.lines.each do |line|
		next unless line.strip =~ TOML_LINK_REGEX
		direction = $~[:direction].to_sym
		raw_link = $~[:link]
		# ignore links ending with *
		next if raw_link =~ /\*$/
		# ignore links ending :splat
		next if raw_link =~ /:splat$/
		fatal("the link \"from #{raw_link}\" has more than one redirect defined") if direction == :from && links[:from].include?(raw_link)
		# only add links once
		next if all_links.has_key?(raw_link)
		all_links[raw_link] = true
		links[direction] << raw_link
	end
	links[:from] = links[:from].sort.uniq.map do |link|
		link.start_with?('http') ? link : "https://#{subdomain}#{link}"
	end
	links[:to] = links[:to].sort.uniq.map do |link|
		link.start_with?('http') ? link : "https://#{subdomain}#{link}"
	end
	links
end

def dump(links, output)
	# convert to yaml
	content = "<!DOCTYPE html>\n<html>\n<head>\n<meta charset=\"utf-8\">\n<title>Redirects</title>\n<meta name=\"description\" content=\"autogenerated\">\n</head>"
	content = "#{content}\n<body>"
	content = "#{content}\n<h1>FROM Links</h1>"
	links[:from].each { |link| content = "#{content}\n<a href=\"#{link}\">#{link}</a>\n<br/>" }
	content = "#{content}\n<h1>TO Links</h1>"
	links[:to].each { |link| content = "#{content}\n<a href=\"#{link}\">#{link}</a>\n<br/>" }
	content = "#{content}\n</body>"
	content = "#{content}\n</html>"
	File.open(output, 'w') { |file| file.puts content }
end

# configure directory and output
input, output, subdomain = configure
puts "[Starting]"
puts "Input --> \"#{input}\""
puts "Output --> \"#{output}\""
puts "Subdomain --> \"#{subdomain}\""
puts "Verbose --> #{$verbose}"
# find all relevant files
links = perform(input, subdomain)
# dump links as needed
dump(links, output)
puts "[Done]"