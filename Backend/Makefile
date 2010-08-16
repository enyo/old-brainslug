# a really lazy build script
CFLAGS = -Wall -g -I$(BOOST_ROOT)/include -I../Contrib/cajun
LDFLAGS = -L$(BOOST_ROOT)/lib -lboost_system -lboost_program_options -lpion-net -lpion-common -lboost_thread-mt -lssl -lcrypto 
BRAINSLUGLIB = libbrainslug.a
LIBOBJECTS = 	FrontendServer.o \
		MoviesResourceHandler.o \
		TVShowsResourceHandler.o \
		MoviesTestDB.o \
		TVShowsTestDB.o \
		ResourceHandler.o \
		TestDB.o \
		SeasonsTestDB.o \
		SeasonsResourceHandler.o
CMDAPPOBJECTS =	main.o
CMDAPP = brainslug-backend
RM = rm
CXX = g++
AR = ar
ARFLAGS = rcs

$(CMDAPP) : $(BRAINSLUGLIB) $(CMDAPPOBJECTS)
	$(CXX) $(LDFLAGS) $(BRAINSLUGLIB) $(CMDAPPOBJECTS) -o $(CMDAPP)

$(BRAINSLUGLIB) : $(LIBOBJECTS)
	$(AR) $(ARFLAGS) $(BRAINSLUGLIB) $(LIBOBJECTS)

%.o : %.cpp
	$(CXX) $(CFLAGS) -c $<

clean :
	$(RM) *.o $(BRAINSLUGLIB) $(CMDAPP)
