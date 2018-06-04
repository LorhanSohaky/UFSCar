ifeq ($(OS),Windows_NT)
	name=Makefile.win
else
	name=Makefile.nix
endif

ifeq ($(MAKECMDGOALS),)
MAKECMDGOALS:=install
endif

$(MAKECMDGOALS):
	make -f $(name) $(MAKECMDGOALS)
