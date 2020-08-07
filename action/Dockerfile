#FROM nikolaik/python-nodejs:latest
#FROM nyukers/sunhose:mezgoodle
FROM alpine:latest

MAINTAINER mezgoodle <mezgoodle@gmail.com>

#WORKDIR /app
RUN apk --no-cache add --update bash 
RUN apk add tree

#COPY 123.py /123.py
#COPY python.sh /python.sh
#COPY node.sh /node.sh
#COPY gitstart.sh /gitstart.sh
#RUN chmod +x /python.sh && chmod +x /node.sh && chmod +x /gitstart.sh
#RUN "/python.sh" && "/node.sh" && "/gitstart.sh"
#RUN "/python.sh"

RUN     rm -rf /var/cache/apk/*

COPY    /runsvinit /
ENTRYPOINT  ["/runsvinit"]
