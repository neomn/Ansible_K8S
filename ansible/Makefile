

password-ping:
	ansible -i /files/inventory-setup-ssh -m ping all

ping:
	ansible -m ping all

remove-k8s: 
	ansible-playbook /ansible/playbooks/001-remove-k8s.yaml

setup-ssh:
	ansible-playbook -i /files/inventory-setup-ssh   playbooks/000-setup-ssh-connection.yml

cluster:
	ansible-playbook /ansible/playbooks/003-install-kubeadm.yml

join-admin-nodes:
	ansible-playbook /ansible/playbooks/004-join-admin-nodes.yml

join-worker-nodes:
	ansible-playbook /ansible/playbooks/005-join-worker-nodes.yml

argocd:
	ansible-playbook /ansible/playbooks/006-install-argocd.yml
