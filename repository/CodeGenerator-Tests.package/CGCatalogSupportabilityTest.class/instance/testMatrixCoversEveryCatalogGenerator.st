tests
testMatrixCoversEveryCatalogGenerator
	"Req 10: every concrete catalog generator (CGStTemplate subclass) appears in the matrix
	 with a known status symbol - none left as a silent unknown."

	| matrix known |
	matrix := CGStTemplate supportabilityMatrix.
	known := #( #supported #requiresInput #requiresResources
	            #unsupported ) asSet.
	CGStTemplate withAllSubclasses do: [ :each |
			self assert: (matrix includesKey: each name asSymbol).
			self assert: (known includes: (matrix at: each name asSymbol)) ]