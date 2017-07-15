# Sentry

## Requirements

- docker-compose v2 (for local)
- ansible (for remote)

### Local install

```
make generate_key
make run
```

go to http://localhost:9000

### Remote install

```
cp server/ansible/server{.example,}
```

Set variables in `server/ansible/server` file

```
make ansible
```

Done
