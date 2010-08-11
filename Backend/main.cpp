#include <boost/program_options.hpp>
#include <iostream>

namespace {

  const size_t DEFAULT_PORT = 5555;

  struct Options {
    size_t port;
  };

  Options getOptionsFromCommandLine(const int argc, char* const argv[]) {
    Options o;
    namespace po = boost::program_options;
    po::options_description od("Server options");
    od.add_options()
      ("help,h", "displays this help message")
      ("port,p", 
       po::type_value<size_t>(&o.port)->default_value(DEFAULT_PORT), 
       "what port the backend should listen on");
    po::variables_map vm;
    po::store(
	      po::parse_command_line(
				     argc, 
				     argv, 
				     od), 
	      vm);
    po::notify(vm);
    if (vm.count("help")) {
      std::cout << od << std::endl;
      exit(1);
    }
    return o;
  }
}

int main(int argc, char* argv[]) {
  const Options o(getOptionsFromCommandLine(argc,argv));
  
}
