.PHONY: clean all test run runtest

BIN_DIR = ./bin
BUILD_DIR = ./build
SRC_DIR = ./lab1
TEST_DIR = ./test
FLAGS =-Wall -std=c++11

all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(BUILD_DIR)/main.o $(BUILD_DIR)/lab1.o
	g++ $(FLAGS) $(BUILD_DIR)/main.o $(BUILD_DIR)/functions.o -o $(BIN_DIR)/main

$(BUILD_DIR)/main.o:
	g++ $(FLAGS) -c $(SRC_DIR)/lab1.cpp -o $(BUILD_DIR)/main.o

$(BUILD_DIR)/lab1.o:
	g++ $(FLAGS) -c $(SRC_DIR)/lab1.cpp -o $(BUILD_DIR)/lab1.o


run: 
	./bin/main

clean:
	rm -f build/*.o
	rm -f bin/main