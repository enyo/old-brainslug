
# The feature list


This documents main purpose is to keep track of feature ideas that separate brainslug from other mediacenters.



## Wishlist

- Support for importing/exporting NFO files for compatibility with XBMC libraries (see [reference](http://xbmc.org/wiki/?title=Import_-_Export_Video_Library) )
- Scanning files in order of modification time (latest changes get scanned first).
- There should always be a queue for processing files. When a new file is added/a file is changed, it goes on top of the queue to be parsed first. (New/changed files a probably most important to the user)
- There should be a notification system... It should be displayed when files get added or deleted (eg.: 5 movies have been added to the database), like an RSS feed, and longer processes (like scanning the whole library) should be viewed as progress bars. This notifications should not be like popups (requiring a click on an OK button).
- Videos that are watched more then 95% (for example) should be marked as watched. Changing the watched status should be easy afterwards.
	- (exiting a movie at 95% DOES not mean it's "watchtime" is actually at 95%!) 
- When a video is stopped, the time should be saved, and the user should be asked if he wants to resume from that position.
	- For the beginning it's ok to ask it every time, but later on there should be conditions when a position is not saved (eg: when i quit the file after a few seconds, or when i watched 99% of the file and just skipped the credits).
- When a video is marked as watched (either automatically or manually) the user should be invited to rate the video.
- Rating a video is just: Good / Bad (or no rating at all). Users should only mark videos as good when they think it's better than average, and vice versa.
	- There should be a feature where the mediacenter proposes movies to watch. This feature should play trailer after trailer of movies not marked as watched. Movies that have a high rating (from other users) should probably be shown first.
- When a video has been watched with a subtitle file, we upload the subtitle file (with the users consent), and store it with the videos md5 sum (and video information). This way we can build a reliable subtitle database. Subtitle support for other subtitle sites should also be implemented of course.
- Optional non-linear scaling for 4:3 content (apple's shitty quicktime player supports this - no other player im aware of. This feature should be optional.
	- if you dont get what i'm talking about: [Screenshot](http://stuff.entropicgarden.com/non_linear_scale.png)(just cause I (enyo) didn't get it: the center is left as is, and the borders are scaled to fit 16:9/10)
- Album/Photo view and audio player. This can really be very simple at the beginning... just so we support it.
- Use filesystem notifications to update the library - instead of scanning for new files
	- And track file renames, etc...
		- If TextMate can do it, I don't see why we cannot
- Detect and show file details like audio encoding (Dolby Surround, DTS, etc..) and video format (SD, 720p, 1080p, etc...) and show it in a convenient way. (And allow filtering)
	- Ben: Just as a sidenote: XBMC and Plex try to get this feature working for years now without success. Pretty sad...
		- enyo: Well, th3y d0nt rOX l1ke wez!
- All user actions (starting a movie, stopping, pausing, etc...) should be logged so that it can be analysed later on (for trophies for example).
	- We have to think about how we're going to store the actions. Do we really store every single action, or do we just store: watched movie / 10min pause / 40min play time / etc...
	- enyo: Maybe we should have, for every video, a list of views with stats -> every time something is watched a new 'watched'entry gets inserted in the database with stats like: number of pauses, total play time, time, etc...
- TROPHIES
	- There should be trophies for all kind of thins. Watching videos for a certain amount of time, watching a number of videos consecutively, etc...
	- The ideal would be that we use the user action log (see above), so that we can add trophies later on. (if we add a trophy for watching all star trek episodes in a row later on, you should get the trophy even if you already did that before)
	- There should be global trophies, and 'local' trophies. You can get local trophies for every franchise (for example a bronze trophy for watching every episode of a dexter season, a silver one for watching every dexter season episode in a row), and globals for getting a number of local trophies.
	- List of a few trophy ideas:
		- Master of soap (for watching a number of episodes of some tv shows, eg: Desperate Housewives)
		- Comic book guy (for watching every episode of star trek in the correct order for example)
		- Original packaging (for having a certain number of videos never watched)
		- Collector (for having every episode... gold could be to also have making of and stuff)
- Bookmarks - selecting a time interval range within a movie and saving it (the range, not the video segment). Optional notes and the ability to send them (i.e. "Hey check out 05.32 - 06.44. This dude kind of looks like your mother."
	- This would also be useful when watching documentaries and interesting parts should be marked so you can find them quickly later.
	- If a subtitle file is present we could even save the text in this bookmarked range as a transcript of the video..
	- enyo: This whole idea goes great with my idea of showing parts on the video timeline when pressing pause. We already would have the *intro* and the *credits* to display, and could then display bookmarks you or your friends set.







## Features for the distant future

- Torrent support.
	- When a friend of mine recommends a movie (or an episode), the torrent client should start downloading the file. Normally with a popup that asks if it's ok, but for some friends automatically.
- Community features (See what my friends recently watched, recommend movies to friends).
- Be able to block some folders/shares from community shares. (We really want to make the media center porn friendly)
	- Generally: Password protect certain areas of the library.
		- Would it not be better to use the password protection of the profile/login and simply hide areas that are designated as private rather than public? Edit: having a big fat "sorry, for some reason your husband has marked this area as restricted and you cannot see it. go ask him why yourself." is not a cool solution either
		- Does porn friendliness also imply you can disable stuff like statistics gathering for files or groups of files?
- Support to browse videos on some selected sites like GameTrailers, Youtube, etc...
- Shared libraries or something like a media server separately from the UI.
	- enyo: It would be cool to have one mediaserver running at home, but a few interfaces, that I can start in my living room on the mediaserver, and on my other computers.
	- enyo: We could write different UIs for the mediaserver, so I could have an extremely simple interface for KDE forexample, where I have all the database with all the movies at my disposition. The actual player can be kaffeine for example. The same goes for windows of course.
		- If the media is stored in Core Data how can it be served to other clients over a network? Is this already built into C.D. or would we have to write a server-client API? Edit: or do you recommend using a different data store than what's currently there?
			- enyo: I don't know, but writing a simple database API can not be that difficult. Edit: I think changing the datastore, for a future I'm not even sure is gonna be used anytime is really not necessary. It would suffice to create a simple API, so that at least I could see what movies are in there, etc... This could be over a XML interface.... something really extremely simple.
				- I wonder if these sites like freetvdb etc. open up their server API as well as the client XML spec
- Show media files which are in itunes in our media center. (and collect metadata for them)
	- This can't be too much work. I'm sure the API for it is already somewhere in Cocoa or Foundation
		- iTunes (like most macos apps) has a apple script interface - its trivial to get all infos we need this way
- User profiles.
	- OTHER NOTE: enyo: Ben said that he does not want to implement multiple user support right now, and that it's not gonna be easier to think about it from the beginning. So the deal is: he's going to implement it when the time comes, and he's not gonna rant about it!
		- ben: Also: we are so much powered that noz even the coding can make a difference!!!11!!
		- and did i mention yet that matthias stinks?
			- you stink
				- nonono.... YOU stink!
	- NOTE: enyo: We have to decide what profile features will be available, and if there's gonna be the possibility to really switch between users. I think (as we wrote below) that for most features (rating, etc..) a selection of users without a real login is better. But when I want to see what my friends are up to, should there be a possibility to switch to my or another profiles friends? Should this just be like tabs, so that again there is no real login? Or should we just implement both: real logins, but also extremely easy on the fly changes of user actions?
		- Dont think both is a good idea.
	- Users should have the possibility to login separately.
	- Different profiles can NOT have different libraries.
	- Of course: profiles have their own friends, etc...
	- Then its really important to allow a concept like dual logins. Most of the time I watch stuff not alone....
	- (Use a camera and facial recognition to automatically log in all views... or whatever)
	- Ben: But overall i noticed that i NEVER used this feature in boxee or xbmc... just too annoying to switch accounts...
		- enyo: Maybe because it's to shitty. If we're gonna implement multiple user support, switching users has to be extremeley easy and fast!
			- Ben: Maybe it should automatically change user when you start playing "certain" files or tv shows (and im not talking about porn here)
			- enyo: yeah, or we add user selection when asking for a rating, or when marking videos as watched. you would then have a list of users below the rating info, where you can change, or add the users that have watched the video.
				- Ben: MUCH better... more Wii-like, and not PS3/Xbox... only ask which user is doing something when it is really necessary - no real "logins"
					- enyo: sounds like a plan
					- enyo: in that case: also friends should be able to add their names (when i watch a movie at bens, i want to mark the movie as watched for my account also. When i'm at home, my mediacenter just asks if the info was correct, and i have to confirm it)
- Instead of a screensaver we want the presentation view to start. So, when the 'screensaver' starts, and you see a movie you find interesting, you can simply use the remote to view the movies details, or view the movie that has been showed before that one, etc...
- The presentation view can switch between its different modes: mp3 / movie / tv show. you can switch on the fly, and when you're in the normal main menu, under the category 'tv shows' (for example), and select 'presentation mode', then you start the normal presentation mode, but in the 'tv show' mode.
- The media center should know when the intro sequence is, and when the credits begin. This way we can automatically skip the beginning, and start showing the rating dialog (and the 'watch next episode' button) as seen as the credits begin.
	- The easier part: when a video file is stopped manually near the end, we upload that time to the server and store it with the video ID (from tmdb) and the files md5 sum. When this has been done a certain number of times by different users at roughly the same position in the file, we assume this is the beginning of the credits.
		- That is actually an excellent idea for solving this problem.
	- The more difficult part: skipping the intro. For that we need the info of 'continous play blocks'... meaning: when I skip the intro, it's very probable that i'm going to skip more than I want. so i'm going to go back to see the end of the intro. So we upload the start of the intro (when it started skipping) end when the video played again (somewhere near the end of the intro). This settings get uploaded and the same goes as for the credits: the intro gets skipped if a certain number of users have the same time.
		- To go into details :) : Intro sequences should always be viewed the first few times (I don't want the intro skipped the first time I watch a tv show)
		- When the intro is skipped, and I rewind, the steps should be very small, because it's very probable that it just skipped a bit to far, and that I just want to rewind a few seconds.
			- TiVO is able to skip intro and end credits. But I think they use cue markers inserted into the videos so they know when the screen does a hard fade to black and the audio stops as the cue.