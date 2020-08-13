# FROM nikolaik/python-nodejs:latest
FROM alpine:latest
# FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

RUN apk add jq bash git npm yarn py-pip
# WORKDIR /app
COPY gitstart.sh /gitstart.sh
RUN chmod +x /gitstart.sh
ENTRYPOINT ["/gitstart.sh"]

# RUN tree -L 1
RUN echo "Hello world"
# CMD ["/gitstart.sh"]
