#!/bin/sh

cd macos/

VERSION=$1
CURRENT_VERSION=$(cat .framework_version)

if [ "$VERSION" == "$CURRENT_VERSION" ]; then
  echo "The newest version is already installed. Exiting."
  exit 0
fi

pwd

URL=https://github.com/RevenueCat/purchases-ios/releases/download/$VERSION/Purchases_macOS.framework.zip

echo "Downloading Purchases macOS $VERSION from $URL, this may take a minute."

if ! which curl > /dev/null; then echo "curl command not found. Please install curl"; exit 1; fi;
if ! which unzip > /dev/null; then echo "unzip command not found. Please install unzip"; exit 1; fi;

if [ -d ./Purchases_macOS.framework ]; then
    echo "Old Purchases.framework found. Removing it and installing a $VERSION"
    rm -rf ./Purchases_macOS.framework
fi

curl -sSL $URL > temp.zip
unzip -o temp.zip -d temp
mv temp/Purchases_macOS.framework ./Purchases_macOS.framework
rm -r temp
rm temp.zip

if ! [ -d ./Purchases_macOS.framework ]; then
  echo "Purchases_macOS.framework not found. Please reinstall react-native-purchases"; exit 1;
fi;

echo "$VERSION" > .framework_version