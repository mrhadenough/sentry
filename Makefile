run:
	docker-compose up -d
	docker-compose up sentry sentry upgrade

stop:
	docker-compose down

logs:
	docker-compose logs

generate_key:
	docker run --rm sentry:8 config generate-secret-key
	# echo $SENTRY_SECRET_KEY
	# @true
	# @echo SENTRY_SECRET_KEY=$key
	# @echo SENTRY_SECRET_KEY=${key} >> .env
