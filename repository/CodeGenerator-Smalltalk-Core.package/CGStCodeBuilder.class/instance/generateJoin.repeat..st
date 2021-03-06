private
generateJoin: repValue repeat: repNumber
	" Generate, join and answer anObject repetition times 
	(self new generateJoin: 2 repeat: 4) = '2222'
	"
	repNumber >= 0
		ifFalse: [ self error: 'Repetitions must be >= 0 ' , repNumber asString ].
	^ (self generate: repValue repeat: repNumber) 
			inject: String new 
			into: [ :a :b | String streamContents: [ : stream |
							stream 
								nextPutAll: a;
								nextPutAll: b asString ] ].