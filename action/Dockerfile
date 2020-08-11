#FROM nikolaik/python-nodejs:latest
FROM alpine:latest
FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

# WORKDIR /app
COPY node.sh /node.sh
COPY gitstart.sh /gitstart.sh

# Install some packages
RUN apk add jq bash git npm yarn

RUN chmod +x /node.sh && chmod +x /gitstart.sh
RUN "/node.sh" && "/gitstart.sh"

RUN tree -L 1
RUN echo "Hello world"
ENTRYPOINT ["/bin/echo"]
#CMD ["Hello"]
