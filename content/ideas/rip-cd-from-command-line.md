
* [Convert your CD to mp3 with Sound Juicer](http://www.rooot.net/en/geek-stuff/linux/26-cd-to-mp3-sound-juicer.html)

# Google Play Music Manager
Google Play Music
Google's Music Manager can be used to upload your songs
from your computer to your Google Play library.
You can upload up to 50,000 songs and listen on your mobile device, computer, or Android TV.

* [How To Upload Music To Google Play](http://www.instructables.com/id/How-To-Upload-Music-To-Google-Play/)
* [How to upload songs to Google Play Music using the Chrome browser](http://www.cnet.com/how-to/how-to-upload-songs-to-google-play-music-using-the-chrome-browser/)
* [How to Put Your Music Collection Online and Access It From Any Device](How to Put Your Music Collection Online and Access It From Any Device)
* [Ways to Listen to Music & Media on Alexa](https://www.amazon.com/gp/help/customer/display.html?nodeId=201549700)
* [Pair Your Mobile Device with Echo](https://www.amazon.com/gp/help/customer/display.html?nodeId=201549660)

I have a habit of buying the [Compact Disc (CD)][06] albums of the music I love,
ripping the CDs to my digital music library,
(i.e. on my desktop PC which is synced with or accessible by my Squeezebox, iPod, Smartphone, etc.)
and then storing the CD away for safe keeping.
I foresee the day when these little plastic disks may not be sold
since all music will be distributed via the cloud.
Maybe this will never come to pass, but it's what I do!

So what I need is a quick and simple way to rip the CDs and file them away in my music library.
Of course, there are may programs that can help but most have graphic user interface,
meaning they are manual, not scripted.
I what to script / automate the process as much as possible.
I have a standard way to name and organize my music library,
and since the process is the same for any CD, it could be scripted,
at least in large part.

## Linux Music Players
There are loads of music players for Linux.
My goto player is the Gnome project's default player [Rhythmbox][19].
It has a X Window graphical UI but also can work on the command line:

```bash
# play mp3 music, also pops up graphical ui for rhythmbox
rhythmbox ~/Music/Woodstock\ -\ Three\ Days\ of\ Peace\ \&\ Music\ \(25th\ Anniversary\)/Theme\ from\ an\ Imaginary\ Western.mp3
```

So what does one do if you are not running a GUI (aka X Windows)?
There are several music players avalable, just see ["3 command-line music players for Linux"][20].

## Basic Procedure for Ripping
In this great multi-part video tutorial,
"[Command Line: CD Ripping and Encoding][01]"
the author explain how to rip the audio tracks off a music CD,
and then encode that data into ready to play format.
This is all done from the command line using standard command line utilities like [cdparanoia][02]
from the [Vorbis][03]tool set.
cdparanoia retrieves audio tracks from CDROM drives.
The data can be saved to a file or directed to standard output in WAV, AIFF, AIFF-C or raw format.
(MPEG Audio Layer III, generally know as MP3,
is the most widely used encode scheme in use, but it is not open source,
technically you need to provide a royalty fee to use the format.
[`lame`][13] is a program which can be used to create MP3 file.)

But first, lets install all the tools you'll need and described below:

```bash
sudo apt-get install cdparanoia sox cd-discid abcde ripit
```

### Query the CD for Content
You can see what is on the CD by querying and printing the table of contents with
the compact disc ripper [`cdparanoia`][15]

```bash
# print the CDs table of contents
cdparanoia -d /dev/cdrom --query
```

### Rip the CD to Disk
To begin the ripping process, do the following:

```bash
# rip the whole CD to a temporary working directory
cd $HOME/tmp
mkdir newcd
cd newcd
cdparanoia -d /dev/cdrom -B
```

To test to see if you don't have garbage,
try playing one of the tracks.
To do this, use the `sox` utility `play`.

```bash
# test a track to make sure it works
play track01.cdda.wav
```

### Encoding to Desired Format
To encode the WAV files in OGG format from [Vorbis][03], use the following command:

```bash
# encode wav file into ogg format using the highest quality encoding
oggenc -q 10 track01.cdda.wav -o track01.ogg

# test to see if it worked
ogg123 track01.ogg
```

Most media players depend on song tags or ID3 tags encoded onto the sound file.
Song tags are small forms that contains the song’s title, artist, album,
and other related information.
When deciding how to sort, display, and categorize your music,
media players like, Windows Media Player, reads those tags
— not the songs’ filenames.
Most portable music players, including the iPod, also rely on tags.

Song tags can be added to the encode file via the tools used to create the sound file.
For the OGG format:

```bash
# encoding a wav to ogg with tags
oggenc -a "Joe Walash" -G "Rock" -d "1973" -N "1" -t "Rocky Mountain Way" -l "The Smoker You Drink, The Player You Get" -q 10 track01.cdda.wav -o "Rocky Mountain Way.ogg"

# to test if the tags are right, use Rhythmbox
rhythmbox Rocky Mountain Way.ogg
```

```bash
oggenc -q 10 \
-a "Joe Walash" -G "Rock" -d "1973" -l "The Smoker You Drink, The Player You Get" \
-N "1" -t "Rocky Mountain Way" track01.cdda.wav \
-N "2" -t "Book Ends" track02.cdda.wav \
-N "3" -t "Wolf" track03.cdda.wav \
-n "%t.ogg"
```

To convert one sound format to another,
You can use the utility [`ffmpeg`][16].

### Getting Tags
This is great script, but you still need to manual provide the track titles, artist, etc.
You may have observed that if you putting your CD into an Internet-enabled device,
the computer is accessing an online database
([Gracenote][08], [freeDB][09], [MusicBrainz][11] or [AllMusic][10])
with information that matches your CD
(check out [this site][12] for more information).
It’s not actually taking the song information from the physical CD itself, but done via CDDB.
[CDDB, short for Compact Disc Database][04],
is a database for software applications to look up audio CD (compact disc) information over the Internet.
This is performed by a client which calculates a (nearly) unique disc ID and then queries the database.
As a result, the client is able to display the artist name, CD title, track number, etc.
CDDB was designed around the task of identifying entire CDs, not merely single tracks.
The identification process involves creating a "discid", a sort of "fingerprint"
of a CD created by performing calculations on the track duration information
stored in the table-of-contents of the CD.
This discid is used with the Internet database,
typically either to download track names for the whole CD or to submit track names for a newly identified CD.

[`cd-discid`][05] is an utility to get CDDB information for a CD-ROM disc.
The multi-field string that is returned then can be used to query a CDDB database.
That query can be done via the tool [`cddb-tool`][07].

```bash
CDDB_ID=`cd-discid /dev/cdrom`                      # Disc ID for query of CDDB
SERVER="http://freedb.freedb.org/~cddb/cddb.cgi"    # query this CDDB database
USER=`whoami`                                       # who is the user making the query
HOST=`hostname`                                     # who is the host making the query

# get the genre of the album
GENRE=`cddb-tool query $SERVER 5 $USER $HOST $CDDB_ID | awk '{ print $2 }'`

# print the albums title, year, genre, and track titles
cddb-tool read $SERVER 5 $USER $HOST $GENRE $CDDB_ID

# parse out the title of the first track
cddb-tool read $SERVER 5 $USER $HOST $GENRE $CDDB_ID | grep TTITLE0 | sed 's/TTITLE0=//'
```

## Automating the Process
I could take all of he above and create my own script.
Luckily, this has already been done for me.

### Ripit to the Rescue
[`ripit`][14] is a command line audio CD ripper that puts all the above steps into a nice script,
and you can find a short tutorials at
"[Rip Your CDs At The Command Line][17]" and "[Ripping Audio CDs at the Command Line][18]".
`ripit` is used to create MPEG-1 Layer 3 (mp3), Ogg Vorbis (ogg), Flac,
Faac (m4a), audio lossless (als), Musepack (mpc), Wavpack (wv) and/or
Wave (wav) audio files from an audio CD.
With [`ffmpeg`][16] formats like Apple lossless audio (m4a) and other formats can be produced.

The `ripti`script walks you through the ripping process,
and will even grab information about the CD from CDDB or MusicBrainz
(two online repositories of music metadata).
If ripit can't find the CD's metadata online,
it lets you enter that information yourself.
You can also tell ripit which tracks on a CD that you want,
rather than ripping all of the songs on the disc.

`ripit` is a front-end written in perl, for these programs:

* `cdparanoia`, `dagrab` etc. for ripping the audio CD tracks
* `Lame`, `OggVorbis` `Flac`, `Faac`, `mp4als`, `Musepack`, `Wavpack` and `ffmpeg` for encoding the wav files to mp3, `ogg`, `flac`, `m4a` (`aac`), lossless `als`, `mpc`, `wv` or lossless `m4a` (`alac`).
* `CDDB_get` or `WebService-MusicBrainz` perl modules for retrieval of CD information.

`ripit` runs on the command line and does everything required to
produce a set of mp3/ogg/flac/m4a/mpc/wv/... files without any user-intervention (if you choose).
`ripit` does the following with an audio CD:

* Get the audio CD album/artist/track information from CDDB
* Rip the audio CD (using cdparanoia or other cdrippers)
* Encode the files (using lame, oggenc, flac, faac, musepack etc.)
* Tag them according to its format
* Extracts possible hidden tracks
* *Optional:* creates a playlist (M3U) file
* *Optional:* prepares and sends a CDDB submission
* *Optional:* saves the CDDB file
* *Optional:* creates a toc, cue or inf files to burn a CD in DAO with text
* *Optional:* analyze the ways for gaps and splits them into chunks
* *Optional:* merges ways for gapless encoding
* *Optional:* creates a md5sum for each type of sound files
* *Optional:* normalizes the ways before encoding.
* *Optional:* adds a cover-art and album gain to the tags (provided a picture and if the format supports picture tags).
* *Optional:* detection of Various Artists style and tagging according the level of detection.

# Sound Juicer
GNOME now has it own ([not always been true][22]) audio CD extractor calle [Sound Juicer][21].
While not always been part of GNOME,
Sound Juicer is an old program and has been available on most Linux distributions.
You can easily install it via `sudo apt-get install sound-juicer`.
To execute it and bring up its GUI, just execute this in a terminal: `sound-juicer`.

To start using Sound Juicer, open up your CD/DVD disc drive and place in the audio CD.
Sound Juicer should automatically detect that a Music CD is in the drive.
The app should read the CD and attempt to use the Music Brainz database
to detect and automatically assign metadata to what it thinks the album is
(if not, you can enter the data manually they id3 metadata).

* [How To Save Music CDs To Your Linux PC With Sound Juicer](https://www.addictivetips.com/ubuntu-linux-tips/save-music-cds-to-linux-with-sound-juicer/)
* [Rip Audio CDs in Linux with Sound Juicer](https://www.howtogeek.com/howto/20126/rip-audio-cds-with-sound-juicer/)

## Other Useful Tools
[`id3`][] is an ID3 v1.1 tag editor.
ID3 tags are traditionally put at the end of compressed streamed audio files to denote information about the audio contents.

[`id3v2`][] is an ID3 v2 tag editor.
ID3 tags are traditionally put at the end of compressed streamed audio files to denote information about the audio contents. Using this command line software you can add/modify/delete id3v2 tags and optionally convert id3v1 tags to id3v2.

## Sources
* [HOWTO: Convert music CDs to MP3 using the Command Line](http://ubuntuforums.org/showthread.php?t=535950)
* [Rip Your CDs At The Command Line](http://www.maketecheasier.com/rip-cds-at-command-line/)
* [CD ripping and burning from the command prompt Howto](http://linuxreviews.org/howtos/cdrecording/#toc4)
* [HowTo: Linux Rip and Encode Audio CDs](http://www.cyberciti.biz/faq/linux-ripping-and-encoding-audio-files/)

http://www.linuxquestions.org/questions/linux-general-1/how-to-do-a-freedb-query-220956/
http://gadgetweb.de/linux/cd-ripping-with-lame-cdda2wav-and-cddb-data.html



[01]:https://www.youtube.com/playlist?list=PL2BE016DE79CAF1EC&app=desktop
[02]:https://www.xiph.org/paranoia/
[03]:http://www.vorbis.com/
[04]:http://en.wikipedia.org/wiki/CDDB
[05]:http://manpages.ubuntu.com/manpages/precise/man1/cd-discid.1.html
[06]:http://en.wikipedia.org/wiki/Compact_disc
[07]:http://manpages.ubuntu.com/manpages/trusty/man1/cddb-tool.1.html
[08]:http://www.gracenote.com/
[09]:http://www.freedb.org/
[10]:http://www.allmusic.com/
[11]:https://musicbrainz.org/
[12]:http://www.mp3developments.com/article9.php
[13]:http://lame.sourceforge.net/
[14]:http://www.suwald.com/ripit/install.php
[15]:https://www.xiph.org/paranoia/manual.html
[16]:https://www.ffmpeg.org/
[17]:http://www.maketecheasier.com/rip-cds-at-command-line/
[18]:http://www.brighthub.com/computing/linux/articles/18332.aspx
[19]:https://wiki.gnome.org/Apps/Rhythmbox
[20]:https://opensource.com/life/16/8/3-command-line-music-players-linux?sc_cid=701600000011w0zAAA
[21]:https://wiki.gnome.org/Apps/SoundJuicer
[22]:http://www.rooot.net/en/geek-stuff/linux/26-cd-to-mp3-sound-juicer.html
[23]:
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
