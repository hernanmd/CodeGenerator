code-generation
buildMessageSend: selector repeat: paramNumber
	" #('a' 'b' 'c') .  #(1 2 3) . #('a' 1 'b' 2 'c' 3) "
	
	^ paramNumber = 1
		ifTrue: [ self parameter ]
		ifFalse: [ (self generateJoin: ' with: nil' repeat: paramNumber) allButFirst ].
			