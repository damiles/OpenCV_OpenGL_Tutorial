# Simple Makefile
CXX = g++
PROJ = OpenCV_OpenGL
EDITOR = gvim

all: $(PROJ)
$(PROJ): $(PROJ).cpp
	$(CXX) -g `pkg-config --cflags opencv` -o $(PROJ) $(PROJ).cpp  -framework GLUT -framework OpenGL `pkg-config --libs opencv`
clean:
	-rm -f *.o core $(PROJ)
edit:
	-$(EDITOR) $(PROJ).cpp &

