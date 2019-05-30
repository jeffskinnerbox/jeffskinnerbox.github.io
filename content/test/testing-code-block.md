Title: Testing: Code Block
Slug: testing-code-block
Status: hidden

* Check out [Styling Code Blocks Using Pelican](http://kevinyap.ca/2013/12/styling-code-blocks-using-pelican/)

## The Back Story
In Pelican, Markdown support is provided by the Python Markdown package (installed seperately).
Markdown comes with some basic code block capabilities.
If you want some syntax highlighting, you'll need to install Pygments (installed separately).
The Pelican documentation will tell you that the Pygments package is baked right in,
and it is kind-of.
Something not made clear in the Pelican documentation is that
much of the good stuff in Markdown, like Pygments and syntax highlighting, has to be explicitly activated.

Python Markdown comes with several [extras][10], and one of the extension supported is called [CodeHilite][11].
To get this all to work, you must include something like this in your `pelicanconf.py` file:

```
# List of the extensions that the Markdown processor will use.
MD_EXTENSIONS = ['extra', 'codehilite(noclasses=True, pygments_style=manni, guess_lang=False)']
```

Keep in mind that, unless told otherwise
the Pygment highlighting engine will try to guess the language within the code block
and apply highlighting.
This can create some unwanted highlighting, so I turn this option off
(that is why `guess_lang=False`).
Also, Pygment has a default style called `default` but this can be controlled via
the `pygments_style` option.
To see all the Pygment styles, go to [Pygments online demo][12].
To make things even more interesting,
it doesn't appear that all Pygment styles are supported by Pelican,
out of the box (at least when using CodeHilite).
This [link][13] provides some insight on how get other styles working.

Give the above, there are a number of ways to indicate to
Markdown that a something is to be treated as a code block.
You can use indentation of 4 spaces, fences (i.e. string of "~~~~"),
or box text with triple-backtick (e.g. <code>```</code>println("Hello World")<code>```</code>).
More detail is provided below.

## Standard Markdown Code Blocks
Standard Markdown converts text with four spaces at the beginning of each line into a code block.
This first example is using just indenting:

    # Example using simply indentation

    #!/bin/bash

    usage() {
	    echo "Usage: $0 filename"
	    exit 1
    }

    # define is_file_exits function
    # $f -> store argument passed to the script
    is_file_exits() {
	    local f="$1"
	    [[ -f "$f" ]] && return 0 || return 1
    }

What happens if you have a very long line of text that runs beyond the right had side of the page?

    What happens if you have a very long line of text that runs beyond the right had side of the page?  Do you get a scroll bar at the bottom of the code block, or does it wrap around or does it just truncate the line?

**This page http://innerdot.com/iot/a-guide-to-getting-started-with-a-sensor-on-nitrogenio-part-1
wraps code blocks.  Find out how it does it.**

## GitHub Formated Markdown Code Block
Pelican also supports [GitHub Flavored Markdown (GFM)][08] style code blocks,
known as [Fenced Blocks][09] via the Markdown extention CodeHilite.
Just wrap your code in three back-ticks <code>```</code> and you won't need to indent it by four spaces.
_(**NOTE:** Although fenced code blocks don't have to be preceded by a blank line—unlike indented code blocks, it is recommend placing a blank line before them to make the raw Markdown easier to read.)_

```
# Example using Fenced Blocks

#!/bin/bash

usage() {
    echo "Usage: $0 filename"
    exit 1
}

# define is_file_exits function
# $f -> store argument passed to the script
is_file_exits() {
    local f="$1"
    [[ -f "$f" ]] && return 0 || return 1
}
```

A feature of CodeHilite is that it will do automatic syntax detection by looking at the first line of code.
This is done without the assistance of Pygments, so the turning off automatic detection in Pygment
does not surpress this feature.
Below is an example (with no language given in the fenced block):

```
#!/bin/bash

usage() {
    echo "Usage: $0 filename"
    exit 1
}

# define is_file_exits function
# $f -> store argument passed to the script
is_file_exits() {
    local f="$1"
    [[ -f "$f" ]] && return 0 || return 1
}
```

## Specifying the Syntax Highlighting
Code blocks can be taken a step further by adding syntax highlighting.
In your fenced block, add an optional language identifier and we'll run it through syntax highlighting.
You can find out which keywords are valid as language identifiers by
perusing the GitHub's Language Savant [languages.yml][10] file.
For example, to syntax highlight Ruby code, start the block with <code>```ruby</code> to get:

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

Or using  <code>```bash</code> gets you:

```bash
# this is a comment line
mkdir /mnt/backup
chmod a+rwx /mnt/backup
chmod o-w /mnt/backup
```

If you choose to uses `~~~~` as it means to identify a code block,
you'll need to use a slightly different format.
For example, to syntax highlight C++ code, start the block with `~~~~.cpp` to get:

~~~~.cpp
// Hello.cc
//   how to compile: either
//     make Hello
//   or
//     g++     Hello.cc   -o Hello
//   usage:
//     Hello
//   features:
//     uses cout to write text

#include <iostream>
#include <cstdlib>

using namespace std;

int main(int argc, char* argv[]) {
    cout << ":-) hello world" << endl ;
}
~~~~

When you use the `~~~~` Fenced Blocks, you can also emphasized certain lines of code.
You can do this by telling Markdown what lines to highlight in the first fence.
In the example below, lines 4 and 9 are emphasized (e.g. `~~~~{.python hl_lines="4 9"}`).

~~~~{.python hl_lines="4 9"}
#!/usr/bin/python

# Dictionaries map keys to values.
fred = { 'mike': 456, 'bill': 399, 'sarah': 521 }

# Subscripts.
try:
    print fred
    print fred['bill']
    print fred['nora']
    print "Won't see this!"
except KeyError, rest:
    print "Lookup failed:", rest
print

# Entries can be added, udated, or deleted.
fred['bill'] = 'Sopwith Camel'
fred['wilma'] = 2233
del fred['mike']
print fred
~~~~

Python's Markdown also has the [CodeHilite][03] extension which adds code/syntax
highlighting to code blocks using [Pygments][04].
In this case, the text must all be tabbed in 4 spaces, including the fenced block, which is `:::`.
For the example below, indent the text but begin with `:::java hl_lines="9 10 11 12 13"`.

    :::java hl_lines="9 10 11 12 13"
    /* CallingMethodsInSameClass.java
    *
    * illustrates how to call static methods a class
    * from a method in the same class
    */

    public class CallingMethodsInSameClass
    {
	    public static void main(String[] args) {
		    printOne();
		    printOne();
		    printTwo();
	    }

	    public static void printOne() {
		    System.out.println("Hello World");
	    }

	    public static void printTwo() {
		    printOne();
		    printOne();
	    }
    }

## Using Gist For Code Blocks
The posting "[Adding code snippets to your blog][05]"
show you how to use [GitHug Gist][06] to add code listings to your blog.
The example below is a code snippits from [here][07].

<!-- -------- Start: Gist Code Snippit --------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(230, 230, 230); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/6663095.js"></script>
</style>
<!-- --------- End: Gist Code Snippit ---------- -->

The file content to create this is as follows:

```
<!-- -------- Start: Gist Code Snippit --------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(230, 230, 230); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/6663095.js"></script>
</style>
<!-- --------- End: Gist Code Snippit ---------- -->
```



[01]:http://pythonhosted.org//Markdown/
[02]:http://pythonhosted.org//Markdown/extensions/fenced_code_blocks.html
[03]:http://pythonhosted.org//Markdown/extensions/code_hilite.html
[04]:http://pygments.org/
[05]:http://www.restlessprogrammer.com/2013/02/adding-code-snippets-to-your-blog.html
[06]:https://gist.github.com/
[07]:https://gist.github.com/jeffskinnerbox/6663095
[08]:https://help.github.com/articles/github-flavored-markdown
[09]:https://help.github.com/articles/github-flavored-markdown#fenced-code-blocks
[10]:https://github.com/github/linguist/blob/master/lib/linguist/languages.yml
[10]:http://pythonhosted.org/Markdown/extensions/extra.html
[11]:https://pythonhosted.org/Markdown/extensions/code_hilite.html
[12]:http://pygments.org/demo/
[13]:http://docs.getpelican.com/en/3.3.0/faq.html#i-m-creating-my-own-theme-how-do-i-use-pygments-for-syntax-highlighting
[14]:
[15]:
