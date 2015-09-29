code-generation
joinTemplates
	" Answer a Mustache <String> representing a .NSI script "
		
	^ String crlf join: { 
		self templateHeader.
		self templateCompressors.
		self templateIncludes.
		self templateDefinitions.
		self templateStartMenuDefinitions.
		self templateCompilerCommands.
		self templateControlPanel.
		self templateMUISettings.
		self templatePages.
		self templateLanguage.
		self templateInstallerSection.
		self templateSectionDescription.
		self templateUninstallerSection.
		self templateUtilities }