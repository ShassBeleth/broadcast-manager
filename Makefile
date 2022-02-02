include .env

help:
	@echo "create_app_1 ... Create App Command 1."
	@echo "create_app_2 ... Create App Command 2."
	@echo "bundle_install ... Bundle Install When Add Or Update Gemfile."

create_app_1:
	docker-compose run --no-deps web rails new . --force --database=mysql --api

create_app_2:
	docker-compose build
	docker-compose up -d

bundle_install:
	docker exec $(API_SERVER_CONTAINER_NAME) sh -c "bundle install"

