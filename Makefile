# Rabies_talks
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: rabies.draft.pdf 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
-include $(ms)/talk.def
-include $(ms)/perl.def

##################################################################

## Content

Sources += rabies.txt
rabies.draft.pdf: rabies.txt

## Directories

talkdir:
	/bin/ln -s $(ms)/talk $@


figs = $(Drop)/dimacs/figs
figs:
	/bin/ln -s $(figs) $@
figs/%: 
	cd figs && $(MAKE) $*

Sources += beamer.fmt

### Archive

##### TEMP!! ######
# Archive += rabies.slides.pdf

Archive += $(wildcard archive/*)

rabies.slides.pdf: rabies.draft.pdf
	$(copy)

archive/%.pdf: archive
	$(MAKE) rabies.slides.pdf
	$(CP) rabies.slides.pdf $@

archive:
	mkdir $@

######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/talk.mk
