# Add your language file here:
TARGETS = test.html

XSLTPROC = /usr/bin/xsltproc
XSL = ubuntu.xsl

%.html: %.xml $(XSL)
	@$(XSLTPROC) -o $@ $(XSL) $<

all: $(TARGETS)

clean:
	@rm -f *.html
