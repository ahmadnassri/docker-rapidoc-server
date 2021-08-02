# ---- base image ----
FROM ahmadnassri/serve-reload-replace:1.1.16

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

