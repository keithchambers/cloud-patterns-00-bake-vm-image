cloud-patterns-00-bake-vm-image
===============================

Bake VM images for reliable cloud native deployments.

# Setup

Step 1: Launch an instance of CentOS 7 to OpenStack.

Step 2: SSH to the instance of CentOS 7.

```
$ ssh centos@<instance-ip-address>
```

Step 3: Install git.

```
$ sudo yum install git -y
```

Step 4: Clone this `cloud-patterns-00-bake-vm-image` git repo.

```
$ git clone https://github.com/keithchambers/cloud-patterns-00-bake-vm-image.git
```

Step 5: Create `~/vars.yml` file with your OpenStack settings.

```
os_auth_url: https://region-1.us-1.cloud.cisco.com:5000/v2.0
os_username: kechambe
os_password: p@55w0Rd
os_tenant_name: 1873c63cf02347f8bcfd1ea76bc0ce06
os_tenant_id: project-1
```
An example `~/vars.yml` file is located at `~/cloud-patterns-00-bake-vm-image/vars.yml.example`. These setting can be obtained by from the Horizon console with clicking `Download OpenStack RC File` from the `API Access` tab in the `Access & Security` menu.
 
# Usage

Step 1: cd to `~/cloud-patterns-00-bake-vm-image`.

```
$ cd ~/cloud-patterns-00-bake-vm-image
```

Step 2: execute  `./build-img.sh`.

```
$ ./build-img.sh
```

