# Docker Registry Proxy for Hassio

A Docker Registry Proxy running on Hassio. With this you can configure a HTTP/HTTPS proxy for your Docker client.

This could come handy if you are running multiple servers with Docker and hit docker pull limits quite fast.
This addon uses [rpardini/docker-registry-proxy](https://github.com/rpardini/docker-registry-proxy) as base and only changed certain directories in order to make it work for Home Assistant.

There are no configurable options for now.
