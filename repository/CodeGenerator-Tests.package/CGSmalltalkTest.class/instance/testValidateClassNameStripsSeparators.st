tests - naming
testValidateClassNameStripsSeparators
	"validateClassName: capitalizes, camel-cases underscore-separated words, and removes hyphens and spaces."

	| gen |
	gen := self newGenerator.
	self assert: (gen validateClassName: 'my_widget') equals: 'MyWidget'.
	self assert: (gen validateClassName: 'my-widget') equals: 'Mywidget'.
	self assert: (gen validateClassName: 'My Widget') equals: 'MyWidget'.
	self deny: ((gen validateClassName: 'my_widget') includes: $_)