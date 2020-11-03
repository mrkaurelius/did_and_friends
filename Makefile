src := $(wildcard md/*.md)
src := $(src:md/%=%) 
src := $(basename $(src)) 

all: 
	@for src in $(src) ; do \
		pandoc -t beamer md/$$src.md -o pdf/$$src.pdf --slide-level=3 ; \
	done

present: 
	$(shell pdfpc pdf/sunum.pdf && touch pdf/sunum.pdf 2>&1 /dev/null)
