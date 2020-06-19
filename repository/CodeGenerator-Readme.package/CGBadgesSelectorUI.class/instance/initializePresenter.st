initialization
initializePresenter
	" Private - See superimplementor's comment "

	self badgeTypes whenSelectionChanged: [ 
		self badgeTypes hasSelection
			ifTrue: [ self updateBadgesList ] ]
