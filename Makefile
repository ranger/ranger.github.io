# Some commands to work with page generation.
# Building the page requires https://github.com/hut/boobies

.PHONY: build

ref ?= HEAD

build:
	boobies index.html screenshots.html contact.html documentation.html download.html
