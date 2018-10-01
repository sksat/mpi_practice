#include <iostream>
#include <boost/mpi.hpp>

int main(int argc, char **argv){
	boost::mpi::environment env(argc, argv);
	boost::mpi::communicator world;

	std::cout << "rank: " << world.rank() << " "
		<< boost::mpi::environment::processor_name() << std::endl;
}
