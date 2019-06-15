NAME := dscan
VERSION := 0.1.5

.PHONY: build-docs
build-docs:
	pandoc --from=markdown --to=rst --output=README.rst README.md

.PHONY: build
build:
	poetry build

.PHONY: upload-pypi
upload-pypi:
	poetry publish -u $TWINE_USERNAME -p $TWINE_PASSWORD