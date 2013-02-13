# 
# Makefile for docbook
#

TARGETS = routerDIY.html #routerDIY.pdf
XMLS = routerDIY.xml chap1.xml chap2.xml chap3.xml chap4.xml \
       chap5.xml appa.xml bibliography.xml

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

routerDIY.fo: $(XMLS) $(XSL)
	$(XSLTPROC) -o $@ $(FOPXSL) $<

clean:
	rm -f $(TARGETS)
	rm -f routerDIY.fo
