ping:
	ansible all -i inventory.ini -m ping

setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook --ask-vault-pass playbook.yml -i inventory.ini

deploy:
	ansible-playbook --ask-vault-pass playbooks/deploy.yml -i inventory.ini -u sergeikiss

encryption:
	ansible-vault encrypt group_vars/webservers/vault.yml

decryption:
	ansible-vault decrypt group_vars/webservers/vault.yml
