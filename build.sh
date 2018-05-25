#!/usr/bin/env bash
vm_version='1.3.0'
iso_md5_checksum='1ee0a4abb95e1684ca1aa7c66218398d'
vm_description='RancherOS with Alpine console (without VirtualBox Guest Additions). [Packer GitHub Source](https://github.com/chriswayg/rancheros-box/tree/basic)'
vagrantcloud_token='pVOi8vcIvCZDkQ.atlasv1.oeowDxv73MPyW74jBQTjzZ38DeU3SI2k57PDxGEzRoLvmzzeFkt2fv4QWgomiZdPZu0'
packer build \
    -var "vm_version=${vm_version}" \
    -var "iso_md5_checksum=${iso_md5_checksum}" \
    -var "vm_description=${vm_description}" \
    -var "vagrantcloud_token=${vagrantcloud_token}" \
    "packer_rancheros.json"
