transforming
buildSetterComment: selector

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '" Sets the ';
			nextPutAll: selector asString allButLast;
			nextPutAll: ' of this ';
			nextPutAll: self definingClass name;
			nextPutAll: ' "' ]