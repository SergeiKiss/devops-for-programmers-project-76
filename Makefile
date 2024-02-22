ping:
	ansible all -i inventory.ini -m ping

setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yml -i inventory.ini

deploy:
	ansible-playbook playbooks/deploy.yml -i inventory.ini -u sergeikiss
