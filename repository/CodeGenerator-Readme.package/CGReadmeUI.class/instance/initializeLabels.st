initialization
initializeLabels

	self repositoryNameField
		ghostText: 'Please enter the repository name on GitHub';
		label: 'Repository'.
	self userNameField
		ghostText: 'Please enter your user name on GitHub';
		label: 'Username'.
	self textArea label: self textAreaLabel