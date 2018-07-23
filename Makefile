default: build push

build:
	docker build --pull -t acoshift/gobuilder .

push:
	docker push acoshift/gobuilder
