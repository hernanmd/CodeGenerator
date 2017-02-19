initialize-release
initialize
	" Private - Initialize the receiver's default settings "

	super initialize.
	self setSourceAsCode.
	self selectorMapper prefixSelector: #test.
	self exclusions addAll: self defaultExclusions.