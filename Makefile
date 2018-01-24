# Some commands to work with page generation.
# Building the page requires https://github.com/hut/inlineswap

.PHONY: build

ref ?= HEAD

build:
	inlineswap index.html screenshots.html contact.html documentation.html download.html changelog.html
