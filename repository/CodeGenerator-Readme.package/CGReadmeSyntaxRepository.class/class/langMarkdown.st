syntax
langMarkdown

	^ 'This is an H1
=============

This is an H2
-------------

# This is an H1
## This is an H2
###### This is an H6

# This is an H1 #
## This is an H2 ##
### This is an H3 ######


> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
id sem consectetuer libero luctus adipiscing.


*   Red
*   Green
*   Blue
-   Red
-   Green
-   Blue

1.  Bird
2.  McHale
3.  Parish

*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.

*   A list item with a code block:

        <code goes here>


This is a normal paragraph:

    This is a code block.

Here is an example of AppleScript:

    tell application "Foo"
        beep
    end tell

This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.

See my [About](/about/) page for details.   

This is [an example][id] reference-style link.

This is [an example] [id] reference-style link.

[id]: http://example.com/  "Optional Title Here"
[id]: <http://example.com/>  "Optional Title Here"

[foo]: http://example.com/  "Optional Title Here"
[foo]: http://example.com/  ''Optional Title Here''
[foo]: http://example.com/  (Optional Title Here)


*single asterisks*
_single underscores_
**double asterisks**
__double underscores__
un*frigging*believable

Use the `printf()` function.
``There is a literal backtick (`) here.``
Please don''t use any `<blink>` tags.

![Alt text](/path/to/img.jpg)
![Alt text](/path/to/img.jpg "Optional title")
![Alt text][id]
[id]: url/to/image  "Optional title attribute"

\*literal asterisks\*
'