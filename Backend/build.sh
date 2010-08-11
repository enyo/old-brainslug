# a really lazy build script
g++ -I$BOOST_INCDIR main.cpp FrontendServer.cpp -L$BOOST_LIBDIR -lboost_system -lboost_program_options -o brainslug