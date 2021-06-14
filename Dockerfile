FROM alpine:latest
MAINTAINER mezgoodle <mezgoodle@gmail.com>

RUN apk add jq bash git npm py-pip nodejs python3
COPY action/git.sh /git.sh
RUN chmod +x /git.sh
ENTRYPOINT ["/git.sh"]

RUN echo "Start of the work"
