# VS Code Server with Python & pip

Based on:

- https://github.com/linuxserver/docker-code-server
- https://hub.docker.com/r/linuxserver/code-server

Install from the command line:

```sh
docker pull ghcr.io/sergeykorablin/code-server-python:latest
```

## Install on kubernetes

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
