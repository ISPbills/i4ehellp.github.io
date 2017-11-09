


### Redis

- **version**: Specify the version of Redis you want to install.
- **root_disk_size** (_Optional, AWS EC2 and GCE only_): Default size of root disk (in GB) for servers in stack. Default value is 20.
- **root_disk_type** (_Optional, AWS EC2 and GCE only_): Disk type, accepted values being _ssd_ and _magnetic_. Default value is _ssd_.



{%include _inlines/Deployment/common/building-a-manifest-file/code_building-a-manifest-file_redis-oduction-v1.md  product = include.product %}




* * *
