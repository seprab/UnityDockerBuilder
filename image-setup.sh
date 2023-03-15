#!/bin/bash
# Install linux required packages
echo "Attempting to install linux required packages"
apt update
apt install -y \
  gnupg \
  wget \
  libgtk-3.0 \
  libwebkitgtk-3.0-0 \
  cpio \
  libnss3 \
  libxss1 \
  libasound2 \
  xvfb \
  libglu1-mesa \
  lld \
  clang


# Install the editor and modules
echo "Configure Unity Hub package"
sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | apt-key add -
apt update
# Any of these https://unity.com/unity-hub/release-notes
echo "Install Unity hub"
#apt-get install -y unityhub=3.4.1
apt-get install -y unityhub
#echo "Set Unity editors installation path to /Applications/Unity/Hub/Editor/"
#xvfb-run unityhub --no-sandbox --headless install-path /Applications/Unity/Hub/Editor/
echo "Install editor version $1"
xvfb-run unityhub --no-sandbox --headless install --version $1 --changeset $2 -m android -m android-sdk-ndk-tools -m android-open-jdk

