# Status

_This is a list of stuff that's already working_


## Implemented

1. fetching data from TMDb
  + Searching by title and TMDb id are almost done.
  + Retrieve image from TMDb if cover art doesn't already exist in source directory
  + Tried implementing IMDB support. Seems to be broken. Always get a "page not found" error for the requests, even when I do them manually in Safari.
    + Works with the old 2.0 API though. Do we really want to split it so some queries are done using the new API and some the old, or should we just wait till the new one gets fixed?
      + enyo: I would wait 'til the new one gets fixed... IMDB is not sooo important right now (IMO)

2. fetching data from TTDb
  + Searching by title works. Currently no data fed into to core data, but the queries are filled out and passed to the controller.

3. detecting files in a local movie directory (when a manual scan has been started)

4. removing movies from our DB when the files have been deleted (before a manually trigger scan for new content)