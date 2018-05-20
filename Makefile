CXX = g++

IDIR = -I./include
CXXFLAGS = -Wall -std=c++14 $(IDIR)
LIBS = -lsfml-audio -lsfml-graphics -lsfml-window -lsfml-system

SOURCES_PATH = *.cpp src/model/*.cpp src/viewer/*.cpp

define listar_os_sources
	$(foreach source,$1,$(wildcard $(source)))
endef

define listar_os_objetos
	$(foreach source, $1,$(patsubst %.cpp,%.o,$(source)))
endef


SOURCES := $(call listar_os_sources,$(SOURCES_PATH))
OBJS := $(call listar_os_objetos,$(SOURCES))

OUT = bin/Default

install: makeDir compile

makeDir:
	@mkdir bin -p

%.o: $.cpp
	$(CXX) -c -o  $@ $< $(CXXFLAGS)

compile: $(OBJS)
	$(CXX) -o $(OUT) $^ $(CXXFLAGS) $(LIBS)

run: install
	@cd bin && ./Default

clean:
	@rm $(OBJS)
