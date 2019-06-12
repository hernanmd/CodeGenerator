initialization
initializeLabels
	self repositoryName
		ghostText: 'Please enter the repository name on GitHub';
		label: 'Repository'.
	self userName
		ghostText: 'Please enter your user name on GitHub';
		label: 'Username'.
	self mdTextArea label: 'README.md'