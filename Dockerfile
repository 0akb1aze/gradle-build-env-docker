FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get install -y zip unzip curl wget

RUN curl -s "https://get.sdkman.io" | bash

RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; sdk install gradle" 

RUN wget "https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip" -O /opt/sdk.zip

RUN unzip /opt/sdk.zip -d /opt

CMD ["touch", "/root/hello"]
