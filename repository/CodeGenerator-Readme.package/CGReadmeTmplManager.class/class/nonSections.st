accessing
nonSections
	" Answer a <Collection> of entries to be ignored when iterating a git README templates directory "
	
	^ { 
			'.git' .
			'README.md' .
			CGReadme readmeRepoIdentifier
		}