#!/bin/sh
eval $(ssh-agent)
ssh-add /files/secrets/sweetiot_ssh_key
export ANSIBLE_CONFIG=/ansible/ansible.cfg
export $(grep -v '^#' /files/secrets/credentials.txt |xargs)
fish -c "echo run a fish command to create fish config directory"
cat /files/scripts/alias | tee > /root/.config/fish/config.fish
fish
