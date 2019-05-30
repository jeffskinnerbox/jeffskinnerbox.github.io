Title: Testing: Footnotes and Definition Lists
Slug: testing-footnotes-and-definition-lists
Status: hidden

## The Back Story

## Footnote Formatting
Python-Markdown’s Footnote syntax generally follows the community at large version of
Markdown but provides some extra‘s such as footnotes. 
For example,
the the following block of text:

Footnotes[^a] have a label[^@#$%] and the footnote's content.
And you can have formating within the footnote[^2].

[^a]: This is a footnote content.
[^@#$%]: A footnote on the label: "@#$%".
[^2]: 
    The first paragraph of the definition.

    Paragraph two of the definition.

    > A blockquote with
    > multiple lines.

        a code block

    A final paragraph.

This was created via this block of Markdown text:

```
Footnotes[^a] have a label[^@#$%] and the footnote's content.
And you can have formating within the footnote[^2].
[^a]: This is a footnote content.
[^@#$%]: A footnote on the label: "@#$%".
[^2]: 
    The first paragraph of the definition.

    Paragraph two of the definition.

    > A blockquote with
    > multiple lines.

        a code block

    A final paragraph.
```

The text to create the footnotes can appear anywhere in the Markdown file,
but by default, they will be rendered at the end of the page or article.
See [here][01] if you wish to control the footnotes location.



## Definition Lists
The [Definition Lists][02] extension adds the ability to create definition lists in Markdown documents.
For example, here are defintions of two fruits:
 
Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.

Orange
:   The fruit of an evergreen tree of the genus Citrus.

You can also add multiple definitions (if you add some spacing between items):

Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.
:   An American computer company.

Orange
:    The fruit of an evergreen tree of the genus Citrus.

This was created via this block of Markdown text:

```
Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.
:   An American computer company.

Orange
:    The fruit of an evergreen tree of the genus Citrus.
```



[01]:http://pythonhosted.org/Markdown/extensions/footnotes.html
[02]:http://pythonhosted.org/Markdown/extensions/definition_lists.html
