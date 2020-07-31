FROM ubuntu
MAINTAINER Mezgoodle <Mezgoodle@gmail.com>

RUN apt-get install -y tree

ADD 123.py /123.py
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
