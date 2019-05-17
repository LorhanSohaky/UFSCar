CC = gcc

OUT = solution.out

OBJDIR = obj
BINDIR = bin

IDIR = -I./src/utils
SOURCES_PATH = src/*.c src/utils/*.c

CFLAGS = -Wall -O3 $(IDIR)


define listar_os_sources
	$(foreach source,$1,$(wildcard $(source)))
endef

define listar_as_pastas
	$(foreach source,$1,$(dir $(source)))
endef

define listar_os_objetos
	$(foreach source, $1,$(patsubst %.c,%.o,$(source)))
endef

define adicionar_pasta_obj
	$(foreach source, $1,$(addprefix $(OBJDIR)/,$(source)))
endef


SOURCES := $(call listar_os_sources,$(SOURCES_PATH))

OBJS := $(call listar_os_objetos,$(SOURCES))
OBJS := $(call adicionar_pasta_obj,$(OBJS))

DIRLIST := $(call listar_as_pastas,$(SOURCES_PATH))
DIRLIST := $(call adicionar_pasta_obj,$(DIRLIST))


install: makeDir compile

makeDir:
	@mkdir -p $(BINDIR)
	@mkdir -p $(DIRLIST)

$(OBJDIR)/%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

compile: $(OBJS)
	$(CC) -o $(BINDIR)/$(OUT) $^ $(CFLAGS)

run: install
	@cd $(BINDIR) && ./$(OUT)

clean:
	@rm -rdf $(OBJDIR)
