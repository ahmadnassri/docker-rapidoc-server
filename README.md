# RapiDoc Server

a RapiDoc server with live monitoring and reload

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

## Features

a [RapiDoc][] server that watches for changes in your spec file and automatically reloads connected browser sessions with ever spec file change.

> ***Note**: uses [`serve-reload-replace`][] under the hood to run the HTTP server, and monitor changes*

## Usage

###### quick start

- define an environment variable `spec-url` to point to your spec file *(http url or local path)*
- if a local path: mount your specs file(s) to `/www/`, set `spec-url` path starts with `/`

###### useage with local path

``` bash
$ docker run -it -p 8080:8080 -v /path/to/petstore.yaml:/www/petstore.yaml -e "spec-url=/spec/petstore.json" rapidoc-server
```

###### usage with urls

While you can use a full url to a spec file, it will not watch for changes / automatically reload.

``` bash
$ docker run -it -p 8080:8080 -e "spec-url=https://petstore.swagger.io/v2/swagger.json" rapidoc-server
```

###### usage with Docker Compose

``` yaml
version: 3.8
services:
  docs:
    build: .
    ports:
      - 8080:8080
    volumes:
      - ./my-spec.json:/www/my-spec.json
    environment:
      spec-url: /petstore.json
      theme: dark
```

### RapiDoc Attributes

All the [RapiDoc Attributes][] are supported through environment variables:

``` bash
$ docker run -it --rm -p 8080:8080 \
  -e "spec-url=https://petstore.swagger.io/v2/swagger.json" \
  -e "show-header=false" \
  -e "show-info=false" \
  -e "allow-authentication=false" \
  -e "allow-server-selection=false" \
  -e "allow-api-list-style-selection=false" \
  -e "theme=dark" \
  -e "render-style=read" \
  rapidoc-server
```

  [RapiDoc]: https://rapidocweb.com/
  [`serve-reload-replace`]: https://github.com/ahmadnassri/node-serve-reload-replace
  [RapiDoc Attributes]: https://rapidocweb.com/api.html

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-rapidoc-server

[release-url]: https://github.com/ahmadnassri/docker-rapidoc-server/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-rapidoc-server

[size-url]: https://hub.docker.com/r/ahmadnassri/rapidoc-server
[size-img]: https://badgen.net/docker/size/ahmadnassri/rapidoc-server?label=image%20size

[docker-url]: https://hub.docker.com/r/ahmadnassri/rapidoc-server
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/rapidoc-server
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
