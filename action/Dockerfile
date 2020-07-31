FROM python:3
MAINTAINER Mezgoodle <Mezgoodle@gmail.com>

ADD 123.py /123.py
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["apt-get install -y tree"]
ENTRYPOINT ["/entrypoint.sh"]
