📦 Cài đặt dependencies
1. Cài đặt GLFW qua Homebrew
# Cài đặt Homebrew nếu chưa có
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Cài đặt gcc để compile g++ 
brew install gcc

# Cài đặt glfw
brew install glfw

Build project
Cách 1: Sử dụng Makefile
bash
# Build project
make

# Build và chạy
make run

# Clean build files
make clean

# Build với debug flags
make debug

# Build với optimization
make release
Cách 2: Build thủ công
bash
g++ -std=c++17 -DGL_SILENCE_DEPRECATION main.cpp -o phong_cube \
    -I/opt/homebrew/Cellar/glfw/3.4/include \
    -L/opt/homebrew/Cellar/glfw/3.4/lib \
    -lglfw -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo
Chạy chương trình
./phong_cube
