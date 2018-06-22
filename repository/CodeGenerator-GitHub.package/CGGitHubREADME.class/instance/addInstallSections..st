private - sections
addInstallSections: stream
	" Private - Iterate install sections selectors and add them if present "
	
	self installSections do: [ : assoc |
		(self perform: assoc key) 
			ifTrue: [ stream nextPutAll: (self perform: assoc value) ] ]
