# VS Code Server with Python & pip

```sh
kubectl -n code-server create secret generic code-secrets \
 --from-literal=password='PROVIDE YOUR PASSWORD HERE' \
 --from-literal=sudo_password='YOUR SUDO PASSWORD'
```

Don't forget to place Code Server behind a reverse proxy + TLS.
