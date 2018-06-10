CXX = g++

# Replace SFML directory
SFMLDIR = C:\TDM-GCC-32\SFML-2.5.0-32

IDIR = -I./include -I$(SFMLDIR)\include
CXXFLAGS = -Wall -std=c++14 -O3 -DSFML_STATIC $(IDIR)
LIBS = -L$(SFMLDIR)\lib -m32 -lsfml-graphics-s -lfreetype -lsfml-window-s -lopengl32 -lgdi32 -lsfml-audio-s -lopenal32 -lflac -lvorbisenc -lvorbisfile -lvorbis -logg -lsfml-system-s -lwinmm -mwindows

SOURCES_PATH = *.cpp src/model/*.cpp src/viewer/*.cpp src/controller/*.cpp

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
	if [ ! -d "bin" ]; then @mkdir bin; fi

%.o: $.cpp
	$(CXX) -c -o  $@ $< $(CXXFLAGS)

compile: $(OBJS)
	$(CXX) -o $(OUT) $^ $(CXXFLAGS) $(LIBS)

run: install
	@cd bin && ./Default

clean:
	@rm $(OBJS)
