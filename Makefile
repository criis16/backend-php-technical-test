composer-install:
	docker-compose exec -u $(shell id -u):$(shell id -g) php composer install --dev
.PHONY: composer-

behat:
	docker-compose exec -u $(shell id -u):$(shell id -g) php vendor/bin/behat
.PHONY: behat
