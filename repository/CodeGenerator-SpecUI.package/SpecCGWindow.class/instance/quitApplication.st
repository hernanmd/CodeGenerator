private
quitApplication

	(self confirm: 'Quit ' , self title , '?') 
		ifTrue: [ self quitApplicationWindow ]
		ifFalse: [ 
			self quitApplicationHack.
			self askOkToClose: true ].