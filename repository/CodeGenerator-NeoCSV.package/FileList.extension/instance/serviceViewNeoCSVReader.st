*CodeGenerator-NeoCSV
serviceViewNeoCSVReader
	"Answer a service for viewing the contents of a file in a workspace"
	
	^ (SimpleServiceEntry 
		provider: self 
		label: 'Generate NeoCSVReader reading entire file'
		selector: #generateNeoCSVReaderUpToEnd)
		description: 'Generate NeoCSVReader code with the contents of this file'