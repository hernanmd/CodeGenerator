code-templates
templateGeneric: listTitle list: aList

	^ String streamContents: [ : stream |
		stream
			nextPutAll: listTitle;
			nextPutTerminator;
			nextPutTerminator.
		aList do: [ : item |
			stream 
				nextPutAll: (self mdItemize: item);
				nextPutTerminator  ] ]
