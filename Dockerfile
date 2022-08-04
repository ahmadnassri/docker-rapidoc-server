# ---- base image ----
FROM ahmadnassri/serve-reload-replace:v2.0.0

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

