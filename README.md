# Sentry from docker-compose

## Requirements

- docker-compose v2 (for local)
- ansible (for remote)

### Local install

```
make generate_key
make run
```

go to http://localhost:9000

### Remote instal

```
cp server/ansible/server{.example,}
```

Set server address and domain in `server/ansible/server` file

```
make ansible
```
