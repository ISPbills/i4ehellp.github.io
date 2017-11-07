<!--  usedin: [ _legacy_docker/deployment/building-a-manifest-file-v1.md, _maestro/Deployment/building-a-manifest-file-v1.md, _node/deployment/building-a-manifest-file-v1.md, _rails/deployment/building-a-manifest-file-v1.md, _skycap/deployment/building-a-manifest-file-v1.md] -->


### MySQL

- **version**: Specify the version of MySQL you want to install. Valid values are 5.5 and 5.6 (can only be set during stack build).
- **root_disk_size** (_Optional, AWS EC2 and GCE only_): Default size of root disk (in GB) for servers in stack. Default value is 20.
- **root_disk_type** (_Optional, AWS EC2 and GCE only_): Disk type, accepted values being _ssd_ and _magnetic_. Default value is _ssd_.
- **engine**: Specify the MySQL engine you want to install. Valid values are 'mysql' and 'percona' (can only be set during stack build).



{%include _inlines/Deployment/common/building-a-manifest-file/code_building-a-manifest-file_mysql-oduction-v1.md  product = include.product %}




* * *
