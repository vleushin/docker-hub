FROM java:8

ENV HUB_VERSION 1.0.770

RUN wget https://download.jetbrains.com/hub/1.0/hub-ring-bundle-$HUB_VERSION.zip \
    && unzip hub-ring-bundle-$HUB_VERSION.zip -d /opt/hub \
    && rm hub-ring-bundle-$HUB_VERSION.zip

VOLUME ["/opt/hub/conf", "/opt/hub/data", "/opt/hub/logs", "/opt/hub/backups", "/opt/hub/temp"]

EXPOSE 8080

WORKDIR /opt/hub

ENTRYPOINT ["bin/hub.sh", "run"]
