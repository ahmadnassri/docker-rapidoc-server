# RapiDoc Server

a RapiDoc server with live monitoring and reload

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![super linter][super-linter-img]][super-linter-url]
[![semantic][semantic-img]][semantic-url]

[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

## Features

a [RapiDoc](https://github.com/mrin9/RapiDoc) server that watches for changes in your spec file and automatically reloads connected browser sessions with ever spec file change.

> ***Note**: uses [`serve-reload-replace`](https://github.com/ahmadnassri/node-serve-reload-replace) under the hood to run the HTTP server, and monitor changes*

## Usage

###### quick start

-   mount the folder containing your spec file(s) to `/spec`
-   define an environment variable `spec-url` to point to your spec file
-   for local files `spec-url` must start with `/spec/`

``` bash
$ docker run -it -p 8080:8080 -v $(pwd)/spec:/spec -e "spec-url=/spec/path/to/petstore.json" rapidoc-server
```

###### usage with urls

While you can use a full url to a spec file, it will not watch for changes / automatically reload.

``` bash
$ docker run -it -p 8080:8080 -e "spec-url=https://petstore.swagger.io/v2/swagger.json" rapidoc-server
```

### RapiDoc Attributes

All the [RapiDoc Attributes](https://mrin9.github.io/RapiDoc/api.html) are supported through environment variables:

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

## Docker Compose

``` yaml
version: 3.8
services:
  docs:
    build: .
    ports:
      - 8080:8080
    volumes:
      - ./spec:/spec
    environment:
      spec-url: /spec/petstore.json
      theme: dark
```

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-rapidoc-server

[release-url]: https://github.com/ahmadnassri/docker-rapidoc-server/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-rapidoc-server

[super-linter-url]: https://github.com/ahmadnassri/docker-rapidoc-server/actions?query=workflow%3Asuper-linter
[super-linter-img]: https://github.com/ahmadnassri/docker-rapidoc-server/workflows/super-linter/badge.svg

[semantic-url]: https://github.com/ahmadnassri/docker-rapidoc-server/actions?query=workflow%3Arelease
[semantic-img]: https://badgen.net/badge/📦/semantically%20released/blue

[size-url]: https://hub.docker.com/r/ahmadnassri/rapidoc-server
[size-img]: https://badgen.net/docker/size/ahmadnassri/rapidoc-server

[docker-url]: https://hub.docker.com/r/ahmadnassri/rapidoc-server
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/rapidoc-server
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
