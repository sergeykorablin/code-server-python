# VS Code Server with Python & pip

## Install
```sh
kubectl -n code-server create secret generic code-secrets \
 --from-literal=password='PROVIDE YOUR PASSWORD HERE' \
 --from-literal=sudo_password='YOUR SUDO PASSWORD'

kubectl apply -f code-server.yaml
```

> [!WARNING]  
> Don't forget to place Code Server behind a reverse proxy + TLS.

## Uninstall
```sh
kubectl delete ns code-server
```

![](https://github.com/sergeykorablin/code-server-python/actions/workflows/docker-image.yml/badge.svg)
