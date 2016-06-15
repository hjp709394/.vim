# Generic GNUMakefile

# Just a snippet to stop executing under other make(1) commands
# that won't understand these lines
ifneq (,)
This makefile requires GNU Make.
endif

PROGRAM = hello world

C_FILES := $(wildcard *.c)
OBJS := $(patsubst %.c, %.o, $(C_FILES))
CC = cc
CFLAGS = -Wall -pedantic

MODULES = A B Exe
LIBS = $(foreach n, $(MODULES), $(n)/lib$(n).a)

LDFLAGS = $(foreach n, $(MODULES), -L ./$(n) -l$(n))

all: $(MODULES) $(PROGRAM)


## Modules should be made regardless
define subdir_make
$1:
	$$(MAKE) -C $1

endef

$(eval $(foreach m,$(MODULES),$(call subdir_make,$(m))))

## Module dependencies
B: A

$(PROGRAM): $(MODULES)

.PHONY: $(MODULES)

depend: .depend

.depend: cmd = gcc -MM -MF depend $(var); cat depend >> .depend;
.depend:
	@echo "Generating dependencies..."
	@$(foreach var, $(C_FILES), $(cmd))
	@rm -f depend

-include .depend

# These are the pattern matching rules. In addition to the automatic
# variables used here, the variable $* that matches whatever % stands for
# can be useful in special cases.
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%: %.c
	$(CC) $(CFLAGS) -o $* $<

clean:
	rm -f .depend *.o
	rm -f */.depend */*.o */*.a

.PHONY: clean depend
