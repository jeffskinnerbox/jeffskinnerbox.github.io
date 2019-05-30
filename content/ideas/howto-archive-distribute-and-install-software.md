* [How to create and extract zip, tar, tar.gz and tar.bz2 files in Linux](http://www.simplehelp.net/2008/12/15/how-to-create-and-extract-zip-tar-targz-and-tarbz2-files-in-linux/)

The term **tar** is an acronym for _tape archive_.
A **tarball** or **tarfile** is the name that describes a group or archive of files
that are bundled together using the `tar` command and usually have the `.tar` file extension.

# How to Create a Tar GZip File
For example, to compress a directories `.jpg` files only, you’d type:

```bash
# compress a directories `.jpg` files only
tar -cvzf jpegarchive.tar.gz /path/to/images/*.jpg
```

-c, --create
create a new archive

-v, --verbose
verbosely list files processed

-z, --gzip
filter the archive through gzip

-f, --file=ARCHIVE
use archive file or device ARCHIVE

The resulting `.tar.gz` file is actually the product of two different things,
`tar` basically just packages a group of files into a single file bundle
but doesn’t offer compression on it’s own.
To compress the `tar` you’ll want to add the highly gzip compression.
You can run these as two separate commands if you really want to,
or use `tar` command offers the `-z` flag which lets you automatically gzip the `tar` file.

# How to Extract a Tar GZip File
-x, --extract, --get
extract files from an archive

-t, --list
list the contents of an archive

```bash
# view detailed table of contents
tar -tvzf jpegarchive.tar.gz

# extract a .gz file
tar -xvzf jpegarchive.tar.gz
```
