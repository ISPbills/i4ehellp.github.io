<!--  usedin: [ _legacy_docker/stack-management/global-search-v1.md, _maestro/stack-management/global-search-v1.md, _node/stack-management/global-search-v1.md, _rails/stack-management/global-search-v1.md, _skycap/stack-management/global-search-v1.md] -->


## Advanced Search

You can narrow the search down with the "advanced search syntax". The general search syntax is `key:value`. This means you can run queries like this:



{%include _inlines/StackManagement/common/global-search/code_global-search_advanced-search-code-v1.md  product = include.product %}




Global search supports thse generic search directives:

- `tag` Search the tags
- `type` Search by type. Valid values are `stack`, `server`, `service`, `container`, `firewall`, 'environment' and 'deployment'

Each specific type might have some specific directives.
