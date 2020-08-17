#---------------------------------------------------------------------------
# Dockefile for build Docker image via Github Actions
# Kindly written by Nyukers (C)opyright, 2020
#---------------------------------------------------------------------------
FROM alpine:latest
MAINTAINER mezgoodle <mezgoodle@gmail.com>

RUN apk --no-cache add --update bash &&\
apk add git npm py-pip &&\
rm -rf /var/cache/apk/*
#RUN apk add tree
#RUN rm -rf /var/cache/apk/*

WORKDIR /myapp
COPY . .
#RUN tree -L 1

#RUN pip freeze
#RUN /usr/bin/git version
#RUN /usr/bin/npm version

RUN chmod +x gitstart.sh
ENTRYPOINT ["/myapp/gitstart.sh"]
