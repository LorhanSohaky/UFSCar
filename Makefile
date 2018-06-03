ifeq ($(OS),Windows_NT)
	name=Makefile.win
else
	name=Makefile.nix
endif

$(MAKECMDGOALS):
	make -f $(name) $(MAKECMDGOALS)
