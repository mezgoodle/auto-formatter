# FROM nikolaik/python-nodejs:latest
FROM alpine:latest
# FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

RUN apk add jq bash git npm yarn
# WORKDIR /app
COPY commands.sh /commands.sh
# COPY gitstart.sh /gitstart.sh
# COPY test.sh /test.sh
RUN chmod +x /gitstart.sh && chmod +x /test.sh && chmod +x /commands.sh
# ENTRYPOINT ["/gitstart.sh" && "/test.sh"]
ENTRYPOINT ["/commands.sh"]
# Install some packages



# RUN "/gitstart.sh"

# RUN tree -L 1
RUN echo "Hello world"
# CMD ["/gitstart.sh"]
