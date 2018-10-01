TARGET	= practice

CXX	= clang++
LDFLAGS	= -lboost_mpi

RUNFLAGS	= ./$(TARGET)
MPI_RUNFLAGS=	-np 4 --oversubscribe

default:
	make $(TARGET)

run: $(TARGET)
	mpirun $(MPI_RUNFLAGS) $(RUNFLAGS)

$(TARGET):
	OMPI_CXX=$(CXX) mpicxx main.cc $(LDFLAGS) -o $(TARGET)
