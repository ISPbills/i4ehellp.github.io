<!-- layout:code post: database-backup_mongodb -->

```

$ find /path/to/unarchived/folder '(' -name 'MongoDB.tar' -o -name 'Mongo*.tar.gz' ')' -type f -exec basename {} ';'    

```