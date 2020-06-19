accessing
languageMappings
	" Answer a <Collection> of available language for tagging scripts "
	
	^ { 
		'Markdown' -> #langMarkdown.
		'Microdown' -> #langMicrodown .
		'Pillar' -> #langPillar .
		'Multimarkdown' -> #langMultimarkdown .
		'Asciidoc' -> #langAsciidoc .
		'Kramdown' -> #langKramdown .
		'Markdown Extra' -> #langMarkdownExtra .
		'Markua' -> #langMarkua .
		'Remarkable' -> #langRemarkable .
		'Showdown' -> #langShowdown .
		'Ghost' -> #langGhost .
		'GitLab' -> #langGitlab .
		'GitHub (GFM)' -> #langGithub .
		'Haroopad' -> #langHaroopad .
		'iA Writer' -> #langIAWriter .
		'Redcarpet' -> #langRedcarpet .
		'ScholarlyMarkdown' -> #langScholarlyMarkdown .
		'Taiga' -> #langTaiga .
		'Trello' -> #langTrello 
		} asOrderedDictionary 