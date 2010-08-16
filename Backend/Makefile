# a really lazy build script
ROOTDIR := $(dir $(lastword $(MAKEFILE_LIST)))
CONTRIBDIR=$(ROOTDIR)/../Contrib
INCDIR=$(ROOTDIR)/include
SRCDIR=$(ROOTDIR)/src
LIBDIR=$(ROOTDIR)/lib
BINDIR=$(ROOTDIR)/bin
TESTDBDIR=$(ROOTDIR)/testdb
BRAINSLUGLIB = $(LIBDIR)/libbrainslug.a
LIBOBJECTS = 	$(LIBDIR)/FrontendServer.o \
		$(LIBDIR)/MoviesResourceHandler.o \
		$(LIBDIR)/TVShowsResourceHandler.o \
		$(LIBDIR)/MoviesTestDB.o \
		$(LIBDIR)/TVShowsTestDB.o \
		$(LIBDIR)/ResourceHandler.o \
		$(LIBDIR)/TestDB.o \
		$(LIBDIR)/SeasonsTestDB.o \
		$(LIBDIR)/SeasonsResourceHandler.o
CMDAPPOBJECTS =	$(LIBDIR)/main.o
CMDAPP = $(BINDIR)/brainslug-backend
CFLAGS = -Wall -g -I$(BOOST_ROOT)/include -I$(INCDIR) -I$(CONTRIBDIR)/cajun
LDFLAGS = -L$(BOOST_ROOT)/lib -L$(LIBDIR) -lboost_system -lboost_program_options -lpion-net -lpion-common -lboost_thread-mt -lssl -lcrypto 
RM = rm
RMFLAGS = -rf
CXX = g++
AR = ar
ARFLAGS = rcs
MKDIR = mkdir
CP = cp

$(CMDAPP) : $(BRAINSLUGLIB) $(CMDAPPOBJECTS)
	$(MKDIR) -p $(BINDIR)
	$(CXX) $(LDFLAGS) $(BRAINSLUGLIB) $(CMDAPPOBJECTS) -o $(CMDAPP)
	$(CP) $(TESTDBDIR)/*.json $(BINDIR)

$(BRAINSLUGLIB) : $(LIBOBJECTS)
	$(AR) $(ARFLAGS) $(BRAINSLUGLIB) $(LIBOBJECTS)

$(LIBDIR)/%.o : $(SRCDIR)/%.cpp
	$(MKDIR) -p $(LIBDIR)
	$(CXX) $(CFLAGS) -c $< -o $@

clean :
	$(RM) $(RMFLAGS) $(LIBOBJECTS) $(BRAINSLUGLIB) $(CMDAPPOBJECTS)
