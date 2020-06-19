# Humanoid #

Build a docker image for [humanoid](https://github.com/yzygitzh/Humanoid).

Pre-requisite (to interact with container): install [droidbot](https://github.com/honeynet/droidbot)

#### Commands

- Create: `./build.sh`
- Execute: `./run.sh`

```
$ emulator -avd Nexus-One-10_API_19

$ droidbot -humanoid 127.0.0.1:50405 -a <PATH_TO_APK>/<NAME>.apk -policy dfs_greedy
```


<!---
sdkmanager "system-images;android-19;google_apis;x86"
avdmanager create avd --force --name Nexus-One-10 --package 'system-images;android-19;google_apis;x86' --abi google_apis/x86 --sdcard 512M --device 'Nexus 7'
-->