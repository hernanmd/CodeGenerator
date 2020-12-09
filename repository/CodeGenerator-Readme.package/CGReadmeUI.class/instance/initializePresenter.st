initialization
initializePresenter
	" Private - See superimplementor's comment "

	self repositoryNameField whenTextChanged: [ : text | self readmeGenerator repositoryName: text ].
	self userNameField whenTextChanged: [ : text | self readmeGenerator username: text ].

	self announcer
		when: CGReadmeSectionsAnnUpdate
		send: #updateSections
		to: self.