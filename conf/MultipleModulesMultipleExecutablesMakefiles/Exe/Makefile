# HJP:NOTE
# 	1 all modules and executable targets should be made regardless.
# 	one subdir for one module
# 		all: [all modules] [all executable targets]
#	2 all modules should be made
#		module_i:
#			make -C $@
#	3 executable targets should be depended on libs instead of modules
#		[executable target_i]: [all libs generated from modules]

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
CFLAGS = -Wall -pedantic -I..

MODULES = A B

LIBS = $(foreach n, $(MODULES), ../$(n)/lib$(n).a)

LDFLAGS = $(foreach n, $(MODULES), -L ../$(n) -l$(n))

all: $(PROGRAM)

#SOURCE_SUFFIX = cc c cpp cxx
#HEADER_SUFFIX = h hpp

#define module_lib
#$1/lib$1.a: $$(foreach s, $(SOURCE_SUFFIX), $$(wildcard $1/*.$$(s)))
#    $$(MAKE) -C $1

#endef


## Modules should be made regardless
define exe_make
$(1): .depend $$(LIBS) $(1).o
	$$(CC) $$@.o $$(CFLAGS)  $$(LDFLAGS) -o $$@

endef

$(eval $(foreach m,$(PROGRAM),$(call exe_make,$(m))))

#$(eval $(foreach m,$(MODULES),$(call module_lib,$(m))))

debug:
	echo $(MODULES)
	echo $(LIBS)
	echo $(LDFLAGS)
	echo $(C_FILES)

## Program depends on libs instead of modules
#$(PROGRAM): .depend $(LIBS)
#    $(CC) $(CFLAGS) $@.o $(LDFLAGS)  -o $@

#A/libA.a: $(wildcard A/*.c) $(wildcard A/*.h)
#    echo $^
#    make -C $(@D)

#B/libB.a: $(wildcard B/*.c) $(wildcard B/*.h)
#    echo $^
#    make -C $(@D)

#B:
#    make -C $@

#A:
#    make -C $@

#$(PROGRAM): $(MODULES)

## Module dependencies
B: A

.PHONY: $(MODULES)
depend: .depend

.depend: cmd = gcc $(CFLAGS) -MM -MF depend $(var); cat depend >> .depend;
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

#%: %.c
#    $(CC) $(CFLAGS) -o $* $<

clean:
	rm -f .depend *.o
	rm -f */.depend */*.o */*.a

.PHONY: clean depend
