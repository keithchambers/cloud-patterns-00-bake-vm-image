#!/bin/bash
 
# test is ansible installed
command -v ansible-playbook >/dev/null 2>&1
if [[ "$?" -ne 0 ]]; then
    sudo yum install -y epel-release
    sudo yum install -y ansible
fi
 
ansible-playbook ./lib/build-img.yml
RETVAL="$?"

echo "Completed in $SECONDS seconds"
 
exit "$RETVAL"
 
# EOF
