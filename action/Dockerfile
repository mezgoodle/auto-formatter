FROM python:3
MAINTAINER mezgoodle <mezgoodle@gmail.com>

#WORKDIR /app
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y tree

COPY 123.py /123.py
COPY python.sh /python.sh
COPY node.sh /node.sh
RUN chmod +x /python.sh
RUN chmod +x /node.sh
RUN ["/python.sh""/node.sh"]
RUN ["/node.sh"]
