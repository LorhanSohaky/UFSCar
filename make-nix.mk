CXX = g++

OUT = Default

OBJDIR = obj
BINDIR = bin

IDIR = -I./include
SOURCES_PATH = *.cpp src/model/*.cpp src/viewer/*.cpp src/controller/*.cpp

CXXFLAGS = -Wall -std=c++14 -O3 $(IDIR)
LIBS = -lsfml-audio -lsfml-graphics -lsfml-window -lsfml-system


define listar_os_sources
	$(foreach source,$1,$(wildcard $(source)))
endef

define listar_as_pastas
	$(foreach source,$1,$(dir $(source)))
endef

define listar_os_objetos
	$(foreach source, $1,$(patsubst %.cpp,%.o,$(source)))
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

$(OBJDIR)/%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

compile: $(OBJS)
	$(CXX) -o $(BINDIR)/$(OUT) $^ $(CXXFLAGS) $(LIBS)

run: install
	@cd $(BINDIR) && ./$(OUT)

clean:
	@rm -rdf $(OBJDIR)
