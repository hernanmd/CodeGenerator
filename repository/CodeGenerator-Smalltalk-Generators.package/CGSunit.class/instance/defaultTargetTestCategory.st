defaults
defaultTargetTestCategory
	" Answer a <String> formatted as 'PackageName-Tests' "

	^ String streamContents: [ : stream |
			stream 
				nextPutAll: self inputClass package systemCategoryPrefix;
				nextPut: $-;
				nextPutAll: 'Tests' ]