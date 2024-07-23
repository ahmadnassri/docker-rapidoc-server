## Features

a [RapiDoc](https://rapidocweb.com/) server that watches for changes in your spec file and automatically reloads connected browser sessions with ever spec file change.

> _**Note**: uses [`serve-reload-replace`](https://github.com/ahmadnassri/node-serve-reload-replace) under the hood to run the HTTP server, and **monitor** changes_

## Usage

###### quick start

- define an environment variable `spec-url` to point to your spec file _(http url or local path)_
- if a local path: mount your specs file(s) to `/www/`, set `spec-url` path starts with `/`

###### useage with local path

```bash
$ docker run -it -p 8080:8080 -v /path/to/petstore.yaml:/www/petstore.yaml -e "spec-url=/spec/petstore.json" rapidoc-server
```

###### usage with urls

While you can use a full url to a spec file, it will not watch for changes / automatically reload.

```bash
$ docker run -it -p 8080:8080 -e "spec-url=https://petstore.swagger.io/v2/swagger.json" rapidoc-server
```

###### usage with Docker Compose

```yaml
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

All the [RapiDoc Attributes](https://rapidocweb.com/api.html) are supported through environment variables:

```bash
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
