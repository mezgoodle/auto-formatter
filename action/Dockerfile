#---------------------------------------------------------------------------
# Dockefile for build Docker image via Github Actions
# Kindly written by Nyukers (C)opyright, 2020
#---------------------------------------------------------------------------
FROM alpine:latest
LABEL maintainer <mezgoodle@gmail.com>

WORKDIR /myapp
COPY . .

RUN apk --no-cache add --update bash &&\
    apk add git npm py-pip &&\
    rm -rf /var/cache/apk/* &&\
    chmod +x /myapp -R

#RUN apk add tree
#RUN rm -rf /var/cache/apk/*
#RUN tree -L 1
#RUN pip freeze
#RUN /usr/bin/git version
#RUN /usr/bin/npm version
#RUN chmod +x gitstart.sh

CMD /myapp/gitstart.sh
#CMD ["/myapp/python.sh"]
#ENTRYPOINT ["/myapp/entrypoint.sh"]
#CMD ["start"]
