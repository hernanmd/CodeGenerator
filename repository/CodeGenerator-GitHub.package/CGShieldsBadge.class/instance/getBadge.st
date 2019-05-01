accessing
getBadge

	| url response |
	
	url := String streamContents: [ : stream |
		stream 
			nextPutAll: self baseUrl;
			nextPutAll: (self perform: self service) ].
	^ (response := ZnEasy get: url) isSuccess
		ifTrue: [ Form fromBinaryStream: response contents readStream ]
		ifFalse: [ self error ]