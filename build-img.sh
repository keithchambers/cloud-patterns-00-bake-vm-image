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

# print build result
[[ "$RETVAL" -eq 0 ]] && RETMSG="SUCCEEDED" || RETMSG="FAILED"
echo "Build image $RETMSG in $SECONDS seconds."

exit "$RETVAL"

# EOF
