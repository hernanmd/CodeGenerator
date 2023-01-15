transforming
buildGetterComment: selector

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '" Answer the ';
			nextPutAll: selector asString;
			nextPutAll: ' of this ';
			nextPutAll: self definingClass name;
			nextPutAll: ' "' ]