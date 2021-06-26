NULL=
PROGFILES = \
   ../example/demo/basic.f90 \
   ../example/demo/basic_scaled.f90 \
   ../example/demo/cntour.f90 \
   ../example/demo/framesize.f90 \
   ../example/demo/general.f90 \
   ../example/demo/scientific.f90 \
   ../example/demo/symbols.f90 \
$(NULL)
PROG = ${PROGFILES:.f90=}
SRCS  =  M_calcomp.f90 
OBJS  =  M_calcomp.o   
LIBS :=  -L $$HOME/lib/Linux_gfortran -lGPF
CC := cc
CFLAGS := -O
FC := gfortran
FFLAGS := -O
LDFLAGS := 
F90=gfortran
F90FLAGS := -g -O -Wall -std=f2018 -Wextra -Wno-maybe-uninitialized -Wno-uninitialized
F90FLAGS := -g -O -Wall -Wextra -Wno-maybe-uninitialized -Wno-uninitialized
all: $(PROG) 
	@echo built with $(F90)
	@echo "That's All Folks!"
$(PROG): $(OBJS)
	@echo LIBS $(LIBS)
	$(F90) $(LDFLAGS) $@.f90 -o $@ $(OBJS) $(LIBS)
clean:
	rm -f $(PROG) $(CPROG) $(OBJS) *.mod manpages.txt
.SUFFIXES: $(SUFFIXES) .f90 .F90 
.f90.o:
	@echo LIBS $(LIBS)
	$(F90) $(F90FLAGS) -c $<
.F90.o:
	$(F90) $(F90FLAGS) -c $<
.PHONY: help
help:
	: all     '-- build M_calcomp module'
	: run     '-- run manpage demo programs'
	: man     '-- show all manpages as text'
	: clean   '-- clean directory of object files and executables'
	: doxygen '-- run doxygen(1) if you have it'
	: help    '-- display this text'
.PHONY: run
run: $(PROG)
	# run everything
	echo $? |xargs -n 1|xargs -iXX time XX
	mv *.gif *.ppm ../docs/images/
.PHONY: doxygen
doxygen: 
	doxygen dox.in
.PHONY: man
man:
	@mandb ../man 1>&2
	: INDEX OF MANPAGES TOPICS
	@env MANPATH=../man MANWIDTH=256 man -k .|col -b
	: MANPAGES
	@env MANPATH=../man MANWIDTH=80  man --regex '.*'|col -b|tee manpages.txt
	: SPELLING
	@env MANPATH=../man MANWIDTH=80  man --regex '.*'|col -b|spell|xargs -n 5|column -t
