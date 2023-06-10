# ---- base image ----
FROM ahmadnassri/serve-reload-replace:2.0.1

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

