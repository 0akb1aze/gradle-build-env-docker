#!/bin/bash
curl -s "https://get.sdkman.io" | bash

/bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; sdk install gradle"

wget "https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip" -O /opt/sdk.zip

unzip /opt/sdk.zip -d /opt

wget https://downloads.gradle-dn.com/distributions/gradle-6.5-all.zip -O /opt/gradle-6.5-all.zip

/opt/cmdline-tools/bin/sdkmanager --sdk_root=/opt/android_sdk  --update  

/opt/cmdline-tools/bin/sdkmanager --sdk_root=/opt/android_sdk "platforms;android-25" "build-tools;25.0.2" "extras;google;m2repository" "extras;android;m2repository"

yes | /opt/cmdline-tools/bin/sdkmanager --sdk_root=/opt/android_sdk  --licenses

#/bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; gradle wrapper --gradle-distribution-url file\:/opt/gradle-6.5-all.zip"
