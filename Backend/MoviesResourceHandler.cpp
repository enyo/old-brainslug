#include "MoviesResourceHandler.h"

MoviesResourceHandler::MoviesResourceHandler(const DBPtr db)
  : ResourceHandler(db,"movies") {}
