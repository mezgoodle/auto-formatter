FROM python:3
MAINTAINER Mezgoodle <Mezgoodle@gmail.com>

#WORKDIR /app
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y tree

COPY 123.py /123.py
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
