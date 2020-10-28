FROM ubuntu:latest
ENV TEMPLATE_PATHS=/templates/default.tmpl
RUN apt update -y && apt install -y ca-certificates

COPY ./default.tmpl /templates/default.tmpl
COPY ./alertmanager-bot /usr/bin/alertmanager-bot

ENTRYPOINT ["/usr/bin/alertmanager-bot"]
