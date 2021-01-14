FROM ubuntu

MAINTAINER oak <oak@****.com>

RUN touch /root/hello

CMD ["touch", "/root/hello"]
