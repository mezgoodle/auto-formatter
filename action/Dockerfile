#FROM nikolaik/python-nodejs:latest
#FROM alpine:latest
FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

# WORKDIR /app
COPY gitstart.sh /gitstart.sh

RUN chmod +x /gitstart.sh
RUN "/gitstart.sh"

RUN tree -L 1
ENTRYPOINT ["/bin/echo"]
