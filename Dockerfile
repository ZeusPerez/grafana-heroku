ARG GRAFANA_VERSION="latest"

FROM grafana/grafana:${GRAFANA_VERSION}

USER root

ADD ./defaults.ini /usr/share/grafana/conf
