ifeq ($(OS),Windows_NT)
	name=make-win.mk
else
	name=make-nix.mk
endif

ifeq ($(MAKECMDGOALS),)
MAKECMDGOALS:=install
endif

$(MAKECMDGOALS):
	make -f $(name) $(MAKECMDGOALS)
