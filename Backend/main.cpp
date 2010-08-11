#include <boost/program_options.hpp>
#include <boost/asio.hpp>
#include <iostream>
#include "FrontendServer.h"

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

  void startServices(const Options& o) {
    try {
      boost::asio::io_service ios;
      FrontendServer fs(ios, o.port);
      ios.run();
    } catch (const std::exception& e) {
      std::cerr << "Caught exception running backend services: " << e.what() << std::endl;
    }
  }
}

int main(int argc, char* argv[]) {
  startServices(getOptionsFromCommandLine(argc,argv));
}
