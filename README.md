# RancherOS Box

Easy to to keep up to date with RancherOS releases. If you do not see the latest release on Vagrant Cloud, just build your own by following the steps below.

The default SSH Key has been set up for `vagrant ssh` to allow hacking via the the shell script provisioner.


## How to build

```
git clone https://github.com/chriswayg/rancheros-box.git
cd rancheros-box
```

- Customize `RancherOS-common` with your Vagrant Cloud box name and token and adjust your RancherOS console and description as needed.
- Create a new box on Vagrant Cloud and choose the box name as set in `RancherOS-common`
- Possibly create a new file such as `RancherOS-1.5.0` with the latest version number and md5 hash based on info from:
  - [rancher/os releases](https://github.com/rancher/os/releases/)` iso-checksums.txt`
- Launch the build script with the applicable version number:
```
./build.sh 1.3.0
```

For a local build, just...
