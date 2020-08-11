# FROM nikolaik/python-nodejs:latest
FROM alpine:latest
# FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

# WORKDIR /app
COPY gitstart.sh /gitstart.sh

ENTRYPOINT ["/bin/echo"]
# Install some packages
RUN apk add jq bash git npm yarn

RUN chmod +x /gitstart.sh
RUN "/gitstart.sh"

# RUN tree -L 1
RUN echo "Hello world"
#CMD ["Hello"]
