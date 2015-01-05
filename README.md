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
os_auth_url: https://cloud.cisco.com:5000/v2.0
os_tenant_name: tenant-name
os_tenant_id: 86e97371ad71450d91b292029ca9a8c2
os_net_id: e7b1ae4f-e0d2-4e24-a48f-b9e6c4933323
os_username: username
os_password: p@55w0Rd
```

To download the OpenStack authentication end-point and credentials from the Horizon console, go to the `Access & Security` menu, select the `API Access` tab, and click `Download OpenStack RC File`.
 
# Usage

Execute `build-img.sh`.

```
$ ./build-img.sh
```
