# Rabies_talks
# Rabies_talks
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: rabies.draft.pdf 

##################################################################

# make files

Sources += Makefile .ignore README.md LICENSE.md
Ignore += .gitignore

msrepo = https://github.com/dushoff
ms = makestuff
Ignore += local.mk
-include local.mk
-include $(ms)/os.mk

Ignore += $(ms)
Makefile: $(ms) $(ms)/Makefile
$(ms):
	git clone $(msrepo)/$(ms)

-include $(ms)/talk.def
-include $(ms)/perl.def

##################################################################

## Content

Sources += rabies.txt
rabies.draft.pdf: rabies.txt

## Directories

figs = ~/Dropbox/ICI3D/dimacs/figs
figs:
	/bin/ln -s $(figs) $@
figs/%: 
	cd figs && $(MAKE) $*

Sources += beamer.fmt

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/newtalk.mk
