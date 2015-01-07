#!/bin/bash

# test is ansible rpm installed
if [[ -z "$(rpm -qa ansible)" ]]; then
    sudo yum install -y epel-release
    sudo yum install -y ansible
fi

# build image
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook lib/build-img.yml
RC="$?"

# print build result
[[ "$RC" -eq 0 ]] && MSG="SUCCEEDED" || MSG="FAILED"
echo "Build image $MSG in $SECONDS seconds."

exit "$RC"

# EOF
