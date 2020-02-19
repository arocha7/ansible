# Remove a deployment

* pgSQL

```$ ansible-playbook utils/destroy/pgsql.yml -e target=localhost -e pg_ver=12 -e tarball=12 -v```
```$ ansible-playbook utils/destroy/pgsql.yml -e target=localhost -e pg_ver=11 -e tarball=11 -v```

