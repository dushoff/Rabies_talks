# Rabies_talks
# Rabies_talks
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: rabies.draft.pdf 

##################################################################

# make files

Sources += Makefile .ignore README.md stuff.mk LICENSE.md
Ignore += .gitignore
include stuff.mk
-include $(ms)/os.mk

-include $(ms)/talk.def
-include $(ms)/perl.def

##################################################################

## Content

Sources += rabies.txt
rabies.draft.pdf: rabies.txt

## Directories

figs = $(Drop)/dimacs/figs
figs:
	/bin/ln -s $(figs) $@
figs/%: 
	cd figs && $(MAKE) $*

Sources += beamer.fmt

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/newtalk.mk
