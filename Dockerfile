FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get install -y zip unzip curl wget

ADD ./shell/init.sh /opt/


RUN mkdir /opt/demo_app

COPY ./android-demo /opt/demo_app

RUN chmod a+x /opt/init.sh

RUN /bin/bash -c /opt/init.sh

WORKDIR /opt/demo_app

RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; gradle wrapper --gradle-distribution-url file\:/opt/gradle-6.5-all.zip"
RUN /bin/bash -c "./gradlew assemble"

CMD ["touch", "/root/hello"]
