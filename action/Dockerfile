#FROM nikolaik/python-nodejs:latest
FROM python:3.8-slim-buster
#FROM nyukers/sunhose:mezgoodle

MAINTAINER mezgoodle <mezgoodle@gmail.com>

#WORKDIR /app
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y tree

COPY 123.py /123.py
COPY python.sh /python.sh
COPY node.sh /node.sh
COPY gitstart.sh /gitstart.sh
RUN chmod +x /python.sh && chmod +x /node.sh && chmod +x /gitstart.sh
RUN "/python.sh" && "/node.sh" && "/gitstart.sh"
#RUN "/python.sh"
