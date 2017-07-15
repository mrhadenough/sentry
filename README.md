# Sentry from docker-compose

## Requirements

docker-compose v3

## Install

Local install

```
make generate_key
make run
```

### Remote instal

```
cp server/ansible/server{.example,}
```

Set server address and domain in `server/ansible/server` file

go to http://localhost:9000
