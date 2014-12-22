#!/bin/bash
set -e
 
if [[ $(command -v ansible-playbook >/dev/null 2>&1) -ne 0 ]]; then
    sudo yum install -y epel-release
    sudo yum install -y ansible
fi
 
ansible-playbook lib/build-img.yaml
 
exit $?
 
# EOF
