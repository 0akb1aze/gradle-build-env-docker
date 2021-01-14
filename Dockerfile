FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN touch /root/hello

CMD ["touch", "/root/hello"]
