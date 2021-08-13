# ---- base image ----
FROM ahmadnassri/serve-reload-replace:1.1.17

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

