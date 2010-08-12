# a really lazy build script
g++ -g -I$BOOST_INCDIR -c main.cpp && \
g++ -g -I$BOOST_INCDIR -c FrontendConnection.cpp && \
g++ -g -I$BOOST_INCDIR -c FrontendServer.cpp && \
g++ main.o FrontendConnection.o FrontendServer.o -L$BOOST_LIBDIR -lboost_system -lboost_program_options -lpion-net -lpion-common -lboost_thread-mt -lssl -lcrypto -o brainslug-backend
