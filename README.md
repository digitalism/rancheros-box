# RancherOS Box

RancherOS. A simplified Linux distribution built from containers, for containers.

The RancherOS Vagrant Box should be easy to keep up to date with new RancherOS releases. If you do not see the latest release on Vagrant Cloud, just build your own by following the steps below.

The default SSH Key has been set up for `vagrant ssh` to allow customizing via the the shell script provisioner.

This box does not include VirtualBox Guest Additions. The initial Vagrant box by RancherOS included a possibly usable plugin here: [Packer Build Scripts for RancherOS (2015)](https://github.com/rancher/os-packer/tree/9166642fffd9b2e6ee98098e032a86f2b93e3566)

## How to build

```
git clone https://github.com/chriswayg/rancheros-box.git
cd rancheros-box
```

- Customize `RancherOS-common` with your Vagrant Cloud box name and token and adapt the RancherOS description as needed.
- Create a new box on Vagrant Cloud and choose the box name as set in `RancherOS-common`
- Possibly create a new file such as `RancherOS-1.4.0` with the latest version number and md5 hash based on info from:
  - [rancher/os releases](https://github.com/rancher/os/releases/)` iso-checksums.txt`
- Launch the build script with the applicable version number:
```
./build.sh 1.3.0
```

### Local test build

If you put a non-existant Vagrant Cloud box name (for example `vagrantcloud_box_name="LOCAL"`) in `RancherOS-common` the build will *intentionally* fail on the *post-processor*. If it didn't, it would push every build up to Vagrant Cloud, probably not what is desired when the template is being developed, updated, and/or tested. In spite of the error message, it will still successfully create a box you can test locally. For example:

```
vagrant box add --name "RancherOS_1.3.0-local" RancherOS_1.3.0.box
mkdir -p test && cd test
vagrant init RancherOS_1.3.0-local
vagrant up
```

#### Build environment

```shell
packer version && vagrant -v && vboxmanage --version

	Packer v1.2.3
	Vagrant 2.0.4
	5.2.12r122591
```

#### License:
- MIT
- Authors/Contributors: Matthew Hartstonge, M.A. Alfarra, Christian Wagner
