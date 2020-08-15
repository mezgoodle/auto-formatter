#---------------------------------------------------------------------------
# Dockefile for build Docker Image via Github Actions
# Written by Nyukers 2020
#---------------------------------------------------------------------------
FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

#WORKDIR /myapp
#COPY . .
#COPY gitstart.sh /gitstart.sh
#RUN chmod +x /gitstart.sh
#RUN "/gitstart.sh"

RUN tree -L 1
RUN /usr/bin/pip freeze

ENTRYPOINT ["/bin/echo"]
#CMD ["pip freeze"]
#CMD ["/gitstart.sh"]
