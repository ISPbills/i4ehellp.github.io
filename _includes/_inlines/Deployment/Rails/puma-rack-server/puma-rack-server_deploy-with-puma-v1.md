<!--  usedin: [ _rails/deployment/puma-rack-server-v1.md] -->


## Deploy with Puma

You need to choose your web server at the time of initial build of the stack. Changes to or from Passenger (the default web server) will not be applied after your stack has initially been analyzed. You can however change freely between other supported servers by simply updating your Gems and Procfile.

To run a Puma Rack server, add a line to your Procfile labeled as custom_web. Here is an example:



{%include _inlines/Deployment/Rails/puma-rack-server/code_puma-rack-server_deploy-with-puma-stomweb-v1.md  product = include.product %}




Take note that Puma is running in Daemon mode with the `-d` parameter.



