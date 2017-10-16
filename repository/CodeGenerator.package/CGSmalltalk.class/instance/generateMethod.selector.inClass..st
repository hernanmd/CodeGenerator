accessing
generateMethod: aString selector: aSelector inClass: aClass 

	self  
		targetClass: aClass;
		targetSelector: aSelector asSymbol;
		generateMethodHeader.
	aString notEmpty
		ifTrue: [ 
			self 
				addMethodBody: aString;
				generateMethod ].