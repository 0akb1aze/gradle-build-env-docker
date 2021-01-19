FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get install -y zip unzip curl wget

ADD ./shell/init.sh /opt/

RUN chmod a+x /opt/init.sh

RUN /bin/bash -c /opt/init.sh

RUN wget "https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip" -O /opt/sdk.zip

RUN unzip /opt/sdk.zip -d /opt

RUN wget https://downloads.gradle-dn.com/distributions/gradle-6.5-all.zip -O /opt/gradle-6.5-all.zip

RUN /opt/cmdline-tools/bin/sdkmanager --sdk_root=/opt/android_sdk  --update  

RUN /opt/cmdline-tools/bin/sdkmanager --sdk_root=/opt/android_sdk "platforms;android-25" "build-tools;25.0.2" "extras;google;m2repository" "extras;android;m2repository"

RUN /bin/bash -c "yes | /opt/cmdline-tools/bin/sdkmanager --sdk_root=/opt/android_sdk  --licenses"

RUN gradle wrapper --gradle-distribution-url file\:/opt/gradle-6.5-all.zip

CMD ["touch", "/root/hello"]
