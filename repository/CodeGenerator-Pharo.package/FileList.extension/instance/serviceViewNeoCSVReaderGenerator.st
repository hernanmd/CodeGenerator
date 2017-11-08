*CodeGenerator-Pharo
serviceViewNeoCSVReaderGenerator
	"Answer a service for viewing the contents of a file in a workspace"
	
	^ (SimpleServiceEntry 
		provider: self 
		label: 'Generate NeoCSVReader code'
		selector: #generateNeoCSVReader)
		description: 'Generate NeoCSVReader code with the contents of this file'