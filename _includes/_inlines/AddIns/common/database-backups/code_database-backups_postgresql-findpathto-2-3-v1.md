<!-- usedin: [ _includes/_inlines/AddIns/common/database-backups/database-backups_postgresql-v1.md] -->

```

$ find /path/to/unarchived/folder '(' -name '*.sql' -o -name '*.sql.gz' ')' -type f -exec basename {} ';'    

```