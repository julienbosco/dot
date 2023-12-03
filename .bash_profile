if [[ "$(uname)" == "darwin" ]]; then
  export JAVA_HOME=
  export ANDROID_HOME=/usr/local/share/android-sdk
  export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
  export ANDROID_HOME=/usr/local/share/android-sdk
  export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

