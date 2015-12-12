# Rabies_talks
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: notarget 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
-include $(ms)/talk.def
-include $(ms)/perl.def

##################################################################

## Content

Sources += rabies.txt

######################################################################

## Crib

crib = /home/dushoff/Dropbox/ICI3D/dimacs/talk/

$(Sources):
	$(ccrib)

######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/talk.mk
