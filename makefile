.PHONY: build

ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

build:
	docker run --rm -v=${ROOT_DIR}:/app --workdir=/app gradle:alpine gradle clean build jacocoTestReport

debug: build
	docker run --rm -v=${ROOT_DIR}:/app -p 1044:1044 --workdir=/app gradle:alpine java -classpath /app/build/classes/main -verbose -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=1044 App

validate:
	docker run --rm -v=${ROOT_DIR}:/app --workdir=/app coala/base coala --ci -V

ci: validate build