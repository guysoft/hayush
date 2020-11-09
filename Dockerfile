FROM git.pleroma.social:5050/pleroma/pleroma:develop

MAINTAINER Guy Sheffer <guysoft at gmail dot com>

USER root

WORKDIR /var/lib/pleroma/

ADD https://gitlab.com/soapbox-pub/soapbox-fe/-/jobs/artifacts/v1.1.0/download?job=build-production soapbox-fe.zip
RUN unzip 

WORKDIR /
USER pleroma
