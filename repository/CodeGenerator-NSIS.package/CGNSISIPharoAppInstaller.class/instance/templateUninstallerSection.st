code-templates
templateUninstallerSection
	
	^ String streamContents: [ : stream | 
		stream
			nextPutAll: self sectionPartUninstallerPrologue;
			nextPutAll: self sectionPartUninstallPharoFiles;
			nextPutAll: self sectionPartUninstallerEpilogue ]