accessing
generateMethod: aString selector: aSelector inClass: aClass
	self
		targetClass: aClass;
		targetSelector: aSelector asSymbol;
		generateMethodHeader.
	aString
		ifNotEmpty: [ self
				addMethodBody: aString;
				generateMethod ]