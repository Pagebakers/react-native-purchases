# Troubleshooting?
The combination of npm, Android Studio, and Xcode seem to be pretty fragile. Here are some "methods" to fix what seem like mostly IDE bugs.

## Android

### Purchases symbols not highlighting
Delete your .idea/ folder and restart AS, maybe 2x.


### Android Studio Not Updating Package
Delete gradle caches
rm -rf $HOME/.gradle/caches/