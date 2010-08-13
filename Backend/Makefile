# a really lazy build script
CFLAGS = -g -I$(BOOST_ROOT)/include -I../Contrib/cajun
LDFLAGS = -L$(BOOST_ROOT)/lib -lboost_system -lboost_program_options -lpion-net -lpion-common -lboost_thread-mt -lssl -lcrypto 
OBJECTS = main.o FrontendServer.o

brainslug-backend : $(OBJECTS)
	g++ $(LDFLAGS) $(OBJECTS) -o brainslug-backend

%.o : %.cpp
	g++ $(CFLAGS) -c $<

clean :
	rm *.o
