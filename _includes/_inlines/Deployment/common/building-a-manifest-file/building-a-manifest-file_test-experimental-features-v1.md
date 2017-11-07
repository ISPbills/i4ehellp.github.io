<!--  usedin: [ _legacy_docker/deployment/building-a-manifest-file-v1.md, _maestro/Deployment/building-a-manifest-file-v1.md, _node/deployment/building-a-manifest-file-v1.md, _rails/deployment/building-a-manifest-file-v1.md, _skycap/deployment/building-a-manifest-file-v1.md] -->


## Test experimental features

You can use some features that are still in beta by adding them to _experiments_ section of your manifest file, for example:



{%include _inlines/Deployment/common/building-a-manifest-file/code_building-a-manifest-file_test-experimental-features-od-v1.md  product = include.product %}




These are the parameters that the _experiments_ section currently accepts:

- **docker_storage** (_Optional_): If set to _overlay_, we will configure Docker on new servers to use OverlayFS backend storage.