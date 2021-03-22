# basic Makefile to compile the cpp tests
# these rely on the boost library
# to just compile the python extension use
# python setup.py install
# or
# python setup.py build -i
#
IDIR = /usr/local/include/eigen3 -I/usr/local/include/boost
CXX=c++
CXXFLAGS=-I$(IDIR) -O3 

ODIR=./
LDIR =/usr/local/lib

LIBS= -lboost_unit_test_framework-mt -lboost_timer

_DEPS = fastCDF.h  fastCDFOnSample.h nDDominanceAlone.h 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ =  fastCDF.o  fastCDFOnSample.o nDDominanceAlone.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CXX) -c -o $@ $< $(CXXFLAGS)

testFastCDF: $(OBJ) testFastCDF.cpp
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LIBS)

testFastCDFOnSample: $(OBJ) testFastCDFOnSample.cpp
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
