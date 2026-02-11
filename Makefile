.PHONY: build test deploy

build:
	docker build -t app .

test:
	docker run --rm app npm test

deploy:
	kubectl apply -f k8s/