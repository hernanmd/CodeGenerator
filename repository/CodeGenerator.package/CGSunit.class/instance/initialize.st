initialize-release
initialize

	super initialize.
	self setSourceAsCode.
	self selectorMapper prefixSelector: #test.
	self exclusions addAll: self defaultExclusions.