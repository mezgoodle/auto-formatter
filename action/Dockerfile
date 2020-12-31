#---------------------------------------------------------------------------
# Dockefile for build Docker image via Github Actions
# Kindly written by Nyukers (C)opyright, 2020
#---------------------------------------------------------------------------
FROM alpine:3.12
LABEL maintainer <mezgoodle@gmail.com>

WORKDIR /myapp
COPY . .

RUN apk --no-cache add --update bash &&\
    apk add git npm py-pip &&\
    rm -rf /var/cache/apk/* &&\
    chmod +x /myapp -R

ENTRYPOINT ["/myapp/entrypoint.sh", "start"]
