FROM nikolaik/python-nodejs:latest
MAINTAINER mezgoodle <mezgoodle@gmail.com>

#WORKDIR /app
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y tree

# COPY 123.py /123.py
COPY python.sh /python.sh
COPY node.sh /node.sh
COPY git.sh /git.sh
RUN chmod +x /python.sh
RUN chmod +x /node.sh
RUN git.sh /git.sh
RUN "/python.sh"
RUN "/node.sh"
RUN "/git.sh"
