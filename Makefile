.PHONY: cvs clonecvs build

CVSDIR = _cvs
ref ?= HEAD

build:
	boobies index.html screenshots.html contact.html documentation.html download.html

clonecvs:
	( mkdir $(CVSDIR); cd $(CVSDIR); cvs -z3 -d:ext:hut@cvs.savannah.nongnu.org:/web/ranger co ranger; )

cvs:
	GIT_DIR=.git git cvsexportcommit -p -c -v -w $(CVSDIR)/ranger $(ref)
