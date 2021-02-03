# ---- base image ----
FROM ahmadnassri/serve-reload-replace:1.1.5

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

