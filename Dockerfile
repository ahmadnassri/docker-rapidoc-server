# ---- base image ----
FROM ahmadnassri/serve-reload-replace:v1.1.21

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

