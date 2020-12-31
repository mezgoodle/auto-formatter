FROM alpine:latest
MAINTAINER mezgoodle <mezgoodle@gmail.com>

RUN apk add jq bash git npm py-pip nodejs python3
# WORKDIR /app
COPY action/git.sh /git.sh
RUN chmod +x /git.sh
ENTRYPOINT ["/git.sh"]

RUN echo "Hello world"
