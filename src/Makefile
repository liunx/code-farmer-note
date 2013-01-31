# 
# Makefile for docbook
#

TARGETS = routerDIY.html 
XMLS = routerDIY.xml chap1.xml chap2.xml chap3.xml appa.xml
#routerDIY.pdf

XSLTPROC = /usr/bin/xsltproc
FOP = /usr/bin/fop
XSL = ../xsl/settings.xsl
FOPCFG = ../conf/fop.xconf
FOPXSL = ../xsl/fop.xsl

all: $(TARGETS)

routerDIY.html: $(XMLS) $(XSL)
	$(XSLTPROC) -o $@ $(XSL) $<

routerDIY.pdf: routerDIY.fo
	$(FOP) -c $(FOPCFG) -pdf $@ $<

routerDIY.fo: routerDIY.xml $(XSL)
	$(XSLTPROC) -o $@ $(FOPXSL) $<

clean:
	rm -f $(TARGETS)
	rm -f routerDIY.fo
