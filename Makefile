MACHINE := $(shell uname -m)
PYTHON_VERSION := 3.6.0
all: build

build:
	docker build --build-arg "PYTHON_VERSION=${PYTHON_VERSION}" -t "hk4n/python:${PYTHON_VERSION}-${MACHINE}" -f Dockerfile.${MACHINE} .

.PHONY: all build
