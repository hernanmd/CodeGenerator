initialization
initializePresenter
	" Private - See superimplementor's comment "

	self announcer
		when: CGReadmeSectionsAnnUpdate
		send: #updateSections
		to: self.