#---------------------------------------------------------------------------
# Dockefile for build Docker Image via Github Actions
# Written by Nyukers 2020
#---------------------------------------------------------------------------
FROM nyukers/sunhose:aformat
MAINTAINER mezgoodle <mezgoodle@gmail.com>

WORKDIR /myapp
#COPY gitstart.sh /gitstart.sh
COPY . .
#RUN chmod +x /gitstart.sh
#RUN "/gitstart.sh"
RUN tree -L 1

ENTRYPOINT ["/usr/bin/pip freeze"]
#CMD ["pip freeze"]
#CMD ["/gitstart.sh"]
