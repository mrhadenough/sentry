run:
	docker-compose -f server/ansible/app/templates/docker-compose.yml up -d
	docker-compose -f server/ansible/app/templates/docker-compose.yml run sentry sentry upgrade

stop:
	docker-compose down

logs:
	docker-compose logs

generate_key:
	set -e ;\
	KEY=$$(docker -f server/ansible/app/templates/docker-compose.yml run --rm sentry:8 config generate-secret-key) ;\
	echo SENTRY_SECRET_KEY="$$KEY" > .env ;\

ansible:
	ansible-playbook \
	-i server/ansible/server \
	server/ansible/site.yml \
	-u root
