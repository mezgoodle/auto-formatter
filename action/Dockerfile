FROM python:3
MAINTAINER Mezgoodle <Mezgoodle@gmail.com>

RUN apt-get install -y tree

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
