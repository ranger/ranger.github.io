# Some commands to work with CVS and page generation.
# Building the page requires https://github.com/hut/boobies

.PHONY: push clone build

CVSDIR = _cvs
ref ?= HEAD

build:
	boobies index.html screenshots.html contact.html documentation.html download.html

clone:
	( mkdir $(CVSDIR); cd $(CVSDIR); cvs -z3 -d:ext:hut@cvs.savannah.nongnu.org:/web/ranger co ranger; )

push:
	GIT_DIR=.git git cvsexportcommit -p -c -v -w $(CVSDIR)/ranger $(ref)
