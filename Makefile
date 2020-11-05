src := $(wildcard md/*.md)
src := $(src:md/%=%) 
src := $(basename $(src)) 

all: 
	@for src in $(src) ; do \
		pandoc -t beamer md/$$src.md -o pdf/$$src.pdf --slide-level=3 ; \
	done
