#---------------------------------------------------------------------------
# Dockefile for build Docker Image via Github Actions
# Written by Nyukers 2020
#---------------------------------------------------------------------------
#FROM nyukers/sunhose:aformat
FROM alpine:latest
MAINTAINER mezgoodle <mezgoodle@gmail.com>

RUN apk --no-cache add --update bash 
RUN apk add git npm py-pip
RUN apk add tree
RUN rm -rf /var/cache/apk/*

WORKDIR /myapp
COPY . .
#COPY gitstart.sh /gitstart.sh

#RUN tree -L 1
RUN /usr/bin/pip freeze
RUN /usr/bin/git version
RUN /usr/bin/npm version

RUN chmod +x /gitstart.sh
RUN "/gitstart.sh"

ENTRYPOINT ["/bin/echo"]
