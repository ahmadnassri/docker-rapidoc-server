# ---- base image ----
FROM ahmadnassri/serve-reload-replace:4.0.1

WORKDIR /www

COPY src/ /www/

ENTRYPOINT [ "/app/bin.js" ]

