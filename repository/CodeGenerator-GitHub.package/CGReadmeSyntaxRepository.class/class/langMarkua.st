syntax
langMarkua

	^ '# Chapter One

This is a paragraph. You just write.

Blank lines separate paragraphs. This is *italic text*.

This is another paragraph. You can manually wrap your paragraphs
however you want. Single newlines function like single spaces by
default.

* * *

That was a thematic break. "This is in quotes."

# Chapter Two

This is a paragraph in a new chapter.


# Paragraphs

This is a paragraph. You just write.

Blank lines separate paragraphs. This is *italic text* and **this is bold**.

This is another paragraph. You can manually wrap your paragraphs
however you want. Single newlines function like single spaces by
default.

* * *

That was a thematic break. "This is in quotes."

# Lists

Here''s a numbered list (called an "ordered list", even though all lists are
ordered):

1. foo
2. bar
3. baz

Here''s a bulleted list (called an "unordered list", for irony):

* foo
* bar
* baz

You can even have definition lists!

term 1
: definition 1a
: definition 1b

term 2
: definition 2

# Tables

You can also use tables, which work best for numeric tabular data
involving a small number of columns containing small numbers:

| Central Bank | Rate      |
|--------------|-----------|
| JPY          | -0.10%    |
| EUR          |  0.00%    |
| USD          |  0.00%    |
| CAD          |  0.25%    |

Note that definition lists are preferred to tables for most use cases,
since typing text in a table quickly gets annoying.

# Headings

Markua supports both of Markdown''s heading styles.

The preferred style, called atx headers, has the following meaning in Markua:

```
{class: part}
# Part

This is a paragraph.

# Chapter

This is a paragraph.

## Section

This is a paragraph.

### Sub-section

This is a paragraph.

#### Sub-sub-section

This is a paragraph.

##### Sub-sub-sub-section

This is a paragraph.

###### Sub-sub-sub-sub-section

This is a paragraph.
```

Note the use of three backticks in the above example, to treat the Markua like
inline code.

The other style of headers, called Setext headers, has the following headings:

```
{class: part}
Part
====

This is a paragraph.

Chapter
=======

This is a paragraph.

Section
-------

This is a paragraph.
```

Setext headers look nice, but only if you''re only using chapters and sections.
If you want to add sub-sections (or lower), you''ll be using atx headers for at
least some of your headers. My advice is to just use atx headers all the time.
(The `{class: part}` attribute list on a chapter header to make a part header
does actually work with Setext headers, but it''s really ugly.)

Finally, note that while it is confusing and ugly to mix and match using Setext
and atx headers for chapters and sections in the same document, you can do it.
However, please don''t.

# Images

You can add images like this:

![](mac.jpg)

You can specify the alt text and figure caption like this:

![alt text for accessibility](image.png "Figure Caption")

An example of the difference between alt text and a figure caption is:

![a red apple](mac.jpg "The Original Mac")

You can also set the alt text and/or the figure caption in an attribute list:

{alt: "a red apple", caption: "The Original Mac"}
![](mac.jpg)

Attribute lists are one of Markua''s additions to Markdown, and are discussed
later in this specification.

If you wish, you can configure a Markua Processor to convert alt text into a
figure caption if no separate figure caption is provided. (A figure caption is
just as accessible as alt text, so this is fine.) Global settings are discussed
next.

# Global Settings

Various global settings can be specified at the start of a Markua document to
affect the behaviour of the Markua Processor. For example, you can set the
`alt-caption` setting to `all` to make images use the alt text as the figure
caption instead of as alt text:

```
{
alt-caption: all
}

# Chapter One

This is an apple with a figure caption but no alt text:

![The Original McIntosh, a red apple](mac.jpg)
```

This gets you the terseness of inserting images as figures in LFM, in a general
way. Note that if the `alt-caption` global setting is set to `text` (the
default) this behaviour only happens for text-based resources like code samples.
If the `alt-caption` is set to `none`, it never happens.

The generalization of the Markdown image syntax into resources, and the addition
of global settings, are two more of Markua''s additions to Markdown. These are
also both discussed later in this specification.

One important type of resource in Markua is code samples, which is discussed
next.

# Code Samples

The image syntax is the inspiration for the syntax for external code samples:

![](hello.rb "Hello World in Ruby")

Just like with images, you can also use an attribute list for the caption:

{caption: "Hello World in Ruby"}
![](hello.rb)

Note that you can also specify the figure caption as the alt text, as long as
the global setting of `alt-caption` is not set to `none`:

![Hello World in Ruby](hello.rb)

You can also have inline code samples, which can only have a caption using an
attribute list:

{caption: "Hello World in Ruby"}
```ruby
puts "hello"
```

You can also include single lines of code like `puts "hello"` in paragraphs
using backticks.

# Other Stuff

Note that you can easily add math `d = v_i t + \frac{1}{2} a t^2`$ as well,
either inline in a paragraph or as a figure, using LaTeX math as the format.

> Blockquotes are really easy too.
> --Peter Armstrong, *Markua Spec*

Markua has lots of features not discussed in this example. Read the manual or
the rest of the spec!
'