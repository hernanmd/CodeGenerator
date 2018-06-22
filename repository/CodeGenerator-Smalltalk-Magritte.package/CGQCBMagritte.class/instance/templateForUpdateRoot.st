code-templates
templateForUpdateRoot

	^ 'updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	JQDevelopmentLibrary default updateRoot: anHtmlRoot.
	TBSDevelopmentLibrary default updateRoot: anHtmlRoot.
	
	anHtmlRoot title: ' , self applicationTitle surroundedBySingleQuotes.