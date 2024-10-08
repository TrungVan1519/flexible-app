fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android build_dev

```sh
[bundle exec] fastlane android build_dev
```

Build Flutter APK

### android build_uat

```sh
[bundle exec] fastlane android build_uat
```



### android build_prod

```sh
[bundle exec] fastlane android build_prod
```



### android android_build_dev

```sh
[bundle exec] fastlane android android_build_dev
```

build, export apk and upload to app center

### android android_build_prod

```sh
[bundle exec] fastlane android android_build_prod
```



----


## iOS

### ios build_dev

```sh
[bundle exec] fastlane ios build_dev
```

Build Flutter IPA

### ios ios_build_dev

```sh
[bundle exec] fastlane ios ios_build_dev
```

build, export ipa and upload to app center (VTIT)

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
