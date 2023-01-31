TARGETS = DECIDE test

CFLAGS += -std=c99
CFLAGS += -g -lstdc++
CFLAGS += -Wall -pedantic -lm
CFLAGS += -I./headers



all:: $(TARGETS)

DECIDE: launch.c headers/decide.h intermediate_results/LICs.c intermediate_results/CMV.c intermediate_results/FUV.c intermediate_results/PUM.c 
	gcc launch.c headers/decide.h intermediate_results/LICs.c intermediate_results/CMV.c intermediate_results/FUV.c intermediate_results/PUM.c  \
	-o launch $(CFLAGS)
test: tests.c headers/decide.h intermediate_results/LICs.c
	gcc tests.c headers/decide.h intermediate_results/LICs.c -o test $(CFLAGS)



clean:
	rm -f *.o

