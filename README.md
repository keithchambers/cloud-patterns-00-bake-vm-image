# Description

Bake VM images for reliable cloud native deployments.

# Configure

Launch an new instance of CentOS 7 to OpenStack.

SSH to the new instance.

```
$ ssh centos@<instance-ip-address>
```

Install git.

```
$ sudo yum install git -y
```

Clone this git repo.

```
$ git clone https://github.com/keithchambers/cloud-patterns-00-bake-vm-image.git
```

cd to `~/cloud-patterns-00-bake-vm-image`.

```
$ cd ~/cloud-patterns-00-bake-vm-image
```

Create `vars/main.yml` file with the appropriate settings.

```
# url for base image to start from
base_img_url: http://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2c

# url for packer binary
packer_url: https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip

# endpoint, credentials, and settings for openstack environment
os_auth_url: https://region-1.us-1.cloud.cisco.com:5000/v2.0
os_username: kechambe
os_password: p@55w0Rd
os_tenant_name: 1873c63cf02347f8bcfd1ea76bc0ce06
os_net_id: fd94bff5b314253e9cd673c90fc53857
os_tenant_id: project-1
```

To download the OpenStack authentication end-point and credentials from the Horizon console, go to the `Access & Security` menu, select the `API Access` tab, and click `Download OpenStack RC File`.
 
# Usage

Execute `build-img.sh`.

```
$ ./build-img.sh
```
