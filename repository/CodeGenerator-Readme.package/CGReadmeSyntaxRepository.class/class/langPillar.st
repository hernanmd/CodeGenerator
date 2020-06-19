syntax
langPillar

	^ '!Header 1
!!Header 2
!!!Header 3

@@note this is a note
@@todo this is todo

- Unordered List
# Ordered List
; Description Term
: Description Definition

"­"­bol­d""
''italic''
--strikethrough--
__underscore__

|| Centered Cell
|{ Left-A­ligned Cell
|!| Centered Title
|} Right-­Aligned Cell

@anchor
*@internal­link*
*Google>www.google.com*

+Caption>file://pic.png|width=50|label=fig+

[[[label=hello|language=Smalltalk
Transcript show: ''Hello World''.
]]]

% each line starting with % is ignored

{{{latex:
injects raw \LaTeX in your output file
}}}

{{{html:
injects raw <b>­htm­l</­b> in your output file
}}}
'