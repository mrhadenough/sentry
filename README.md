# Sentry

## Requirements

- pipenv

### Remote install

```
pipenv install
make generate_key
cp server/ansible/server{.example,}
```

Set variables in the `server/ansible/server` file

```
make ansible
```

Done
