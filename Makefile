BUILD_DIR = build

all: prebuild $(BUILD_DIR)/main.o $(BUILD_DIR)/pkg.o $(BUILD_DIR)/add.o
	gccgo -o $(BUILD_DIR)/main $(BUILD_DIR)/main.o $(BUILD_DIR)/pkg.o $(BUILD_DIR)/add.o

prebuild: 
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/main.o: prebuild main.go $(BUILD_DIR)/pkg.o $(BUILD_DIR)/add.o
	gccgo -c main.go -o $(BUILD_DIR)/main.o -I $(BUILD_DIR)

$(BUILD_DIR)/pkg.o: prebuild pkg/pkg.go pkg/sub.go
	gccgo -c pkg/pkg.go pkg/sub.go -o $(BUILD_DIR)/pkg.o

$(BUILD_DIR)/add.o: prebuild pkg/add.c
	gccgo -c pkg/add.c -o $(BUILD_DIR)/add.o