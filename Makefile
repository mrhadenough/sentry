deploy:
	ansible-playbook \
	-i server/ansible/server \
	server/ansible/site.yml \
	-u root
