code-templates
templateForSTONFile
	" Answer a <String> with the basic convenience template "

	^ 'SmalltalkCISpec \{
        #loading : [ 
			SCIMetacelloLoadSpec \{
				#baseline : ''{1}'',
				#directory : ''{2}'',
				#onWarningLog: true,
				#platforms : [ #pharo ]
			\}
		],
        #testing : \{
                #packages : [ ''{3}.*'' ],
                #coverage : \{
						#packages : [ ''{4}.*'' ]
                \},
					#failOnZeroTests: false,
					#defaultTimeout : 120
        \}
\}' format: { 
	self baselineString . 
	self directoryString .
	self testingPackages anyOne .
	self coveragePackages anyOne
	}
