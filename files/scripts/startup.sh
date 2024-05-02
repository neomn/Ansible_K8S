#!/bin/sh
eval $(ssh-agent)
ssh-add /files/secrets/ssh_key
export ANSIBLE_CONFIG=/ansible/ansible.cfg
export $(grep -v '^#' /files/secrets/credentials.txt |xargs)
/bin/sh
