# Simple Makefile for OpenGL project
CXX = g++
CXXFLAGS = -std=c++17 -DGL_SILENCE_DEPRECATION
INCLUDES = -I/opt/homebrew/Cellar/glfw/3.4/include
LIBS = -L/opt/homebrew/Cellar/glfw/3.4/lib -lglfw -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo

TARGET = phong_cube
SOURCES = main.cpp

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SOURCES) -o $(TARGET) $(LIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
