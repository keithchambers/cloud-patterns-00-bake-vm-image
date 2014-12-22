cloud-patterns-00-bake-vm-image
===============================

Bake VM images for reliable cloud native deployments.

# Setup

* Step 1: Launch a CentOS 7 VM to OpenStack.

* Step 2: Run the following commands:
```shell
    $ sudo yum install git -y
    $ git clone https://github.com/keithchambers/cloud-patterns-00-bake-vm-image.git
```

* Step 3: Create and populate ~/vars.yml.

        os_auth_url: https://region-1.us-1.cloud.cisco.com:5000/v2.0
        os_username: kechambe
        os_password: p@55w0Rd
        os_tenant_name: 1873c63cf02347f8bcfd1ea76bc0ce06
        os_tenant_id: project-1

     An example is located at ~/cloud-patterns-00-bake-vm-image/vars.yml.example.
 
# Usage

Execute  ~/cloud-patterns-00-bake-vm-image/build.sh
 ```shell
    $ ~/cloud-patterns-00-bake-vm-image/build.sh
 ```

