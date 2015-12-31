code-templates
templateInstallerSection
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: self sectionPartPrologue;
				nextPutAll: self sectionPartPharoFiles;
				nextPutAll: self sectionPartUserFiles;
				nextPutAll: self sectionPartWriteRegStr;
				nextPutAll: self sectionPartUninstaller;
				nextPutAll: self sectionPartEpilogue ]