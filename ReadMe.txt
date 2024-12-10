
https://wiki.t-firefly.com/en/Core-3588J/linux_sdk_get.html

Download Firefly_Linux_SDK sub-volume compressed package: Linux SDK
After downloading, verify the MD5 code:

$ md5sum rk3588_linux_release_20230114_v1.0.6c_0*
c3bcb3f92bd139f72551c89f75d39bfa  rk3588_linux_release_20230114_v1.0.6c_00
ebb658571a645d4af1e2b569709480b7  rk3588_linux_release_20230114_v1.0.6c_01
9761cc324e9f7133500b590c441b0307  rk3588_linux_release_20230114_v1.0.6c_02
7adc9fe2158d7681554dce1def238f49  rk3588_linux_release_20230114_v1.0.6c_03
3d9201e3849b8a523c05920bebe28b39  rk3588_linux_release_20230114_v1.0.6c_04
6faaee006fe60fc9be60a64a01506cb6  rk3588_linux_release_20230114_v1.0.6c_05

After confirming that it is correct, you can unzip:

mkdir -p ~/proj/rk3588_sdk
cd ~/proj/rk3588_sdk
cat path/to/rk3588_linux_release_20230114_v1.0.6c_0* | tar -xv

# export data
.repo/repo/repo sync -l

Execute the following command to synchronize the code:

# Enter the SDK root directory
cd ~/proj/rk3588_sdk

Delete dir /.Socs    !!!!!!!!

# Sync
.repo/repo/repo sync -c --no-tags
.repo/repo/repo start firefly --all
