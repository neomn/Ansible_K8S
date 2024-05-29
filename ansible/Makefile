

password-ping:
	ansible -i /files/inventory-setup-ssh -m ping all

ping:
	ansible -m ping all

setup-ssh:
	ansible-playbook -i /files/inventory-setup-ssh   playbooks/001-setup-ssh-connection.yml

install-kubeadm:
	ansible-playbook /ansible/playbooks/003-install-kubeadm.yml

join-admin-nodes:
	ansible-playbook /ansible/playbooks/004-join-admin-nodes.yml

join-worker-nodes:
	ansible-playbook /ansible/playbooks/005-join-worker-nodes.yml
