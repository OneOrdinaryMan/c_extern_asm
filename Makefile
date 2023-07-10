TARGET_DIR=target
TARGET_FILE=$(TARGET_DIR)/hello_world
SRC_DIR=src
SRC_FILE=$(SRC_DIR)/start.c
LIB_DIR=$(SRC_DIR)/lib
LIB_FILE=$(LIB_DIR)/libasm.asm
OBJ_DIR=$(TARGET_DIR)/obj
OBJ_FILE=$(OBJ_DIR)/libasm.o
.DEFAULT_GOAL:= build
.PHONY: clean remake
build: $(TARGET_FILE)
$(OBJ_DIR):
	mkdir -p $@
$(OBJ_FILE): $(LIB_FILE) $(OBJ_DIR)
	nasm -f elf64 -o $@ $<
$(TARGET_FILE): $(SRC_FILE) $(OBJ_FILE)
	gcc -nostartfiles -nostdlib -o $@ $^
clean:
	@{\
		if [ -d $(TARGET_DIR) ];then\
			rm -r $(TARGET_DIR);\
		fi;\
	}
remake: clean build
run: $(TARGET_FILE)
	./$<
