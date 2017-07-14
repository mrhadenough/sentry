run:
	docker-compose up -d
	docker-compose run sentry sentry upgrade

stop:
	docker-compose down

logs:
	docker-compose logs

generate_key:
	set -e ;\
	KEY=$$(docker run --rm sentry:8 config generate-secret-key) ;\
	echo SENTRY_SECRET_KEY="$$KEY" > .env ;\
