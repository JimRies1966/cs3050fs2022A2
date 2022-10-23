##############################################################################
# Makefile for hash application
# CMP_SC 3050
# Fall 2022
# By Jim Ries (RiesJ@missouri.edu)
##############################################################################
CC = gcc
CFLAGS = -Wall -Werror -c -g -std=c11 -I.
LDFLAGS = -lm -lcs3050 -L.

%.o : %.c 
	@echo Compiling $^ ...
	@$(CC) $(CFLAGS) $^

myhash : main.o hash.o
	@echo Linking $@ ...
	@$(CC) $^ -o $@
	@echo Done!

jimrhash : main.o
	@echo Linking $@ ...
	@$(CC) $^ $(LDFLAGS) -o $@
	@echo Done!

clean : 
	@rm -rf *.o
	@rm -rf myhash
	@rm -rf jimrhash
	@echo All Clean!
