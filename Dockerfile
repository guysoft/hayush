# FROM git.pleroma.social:5050/pleroma/pleroma:develop
# FROM --platform=linux/arm/v7 git.pleroma.social:5050/pleroma/pleroma:develop
# FROM git.pleroma.social:5050/pleroma/pleroma:92a8ff59
# FROM docker.io/library/pleroma
# FROM pleroma-new
From pleroma

MAINTAINER Guy Sheffer <guysoft at gmail dot com>

USER root

WORKDIR /var/lib/pleroma/

ADD https://gitlab.com/soapbox-pub/soapbox-fe/-/jobs/artifacts/v2.0.0/download?job=build-production soapbox-fe.zip
RUN unzip soapbox-fe.zip

RUN mv /var/lib/pleroma/static/instance/about.example /var/lib/pleroma/static/instance/about
COPY ./index.html  /var/lib/pleroma/static/instance/about/index.html

WORKDIR /
USER pleroma
