FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get install -y zip unzip curl wget

ADD ./shell/init.sh /opt/

RUN chmod a+x /opt/init.sh

RUN /bin/bash -c /opt/init.sh




CMD ["touch", "/root/hello"]
