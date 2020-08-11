#FROM nikolaik/python-nodejs:latest
#FROM alpine:latest
FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

# WORKDIR /app

RUN tree -L 1
RUN echo "Hello world"
ENTRYPOINT ["/bin/echo"]

CMD ["git --version"]
CMD ["npm version"]
CMD ["pip list"]
