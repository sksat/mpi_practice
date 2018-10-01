TARGET	= practice

CXX	= clang++
LDFLAGS	= -lboost_mpi

default:
	make $(TARGET)

$(TARGET):
	OMPI_CXX=$(CXX) mpicxx main.cc $(LDFLAGS)
