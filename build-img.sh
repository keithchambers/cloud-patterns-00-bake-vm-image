#!/bin/bash

# test is ansible rpm installed
if [[ -z "$(rpm -qa ansible)" ]]; then
    sudo yum install -y epel-release
    sudo yum install -y ansible
fi

# build image
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook lib/build-img.yml
RETVAL="$?"

# exit with details
echo -n "Completed with "
[[ "$RETVAL" -eq 0 ]] && echo -n "SUCCESS" || echo -n "ERROR"
echo -n " in $SECONDS seconds"
exit "$RETVAL"

# EOF
