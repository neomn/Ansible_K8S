#!/bin/sh
eval $(ssh-agent)
ssh-add /files/secrets/ssh_key
export ANSIBLE_CONFIG=/ansible/ansible.cfg
export $(grep -v '^#' /files/secrets/credentials.txt |xargs)
cat /files/scripts/alias | tee > /root/.config/fish/config.fish
fish
