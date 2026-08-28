helpers
newContext
	"Answer a CGGenerationContext with the test prefix and category."

	^ CGGenerationContext new
		  prefix: 'CGTst';
		  classCategory: 'CGGeneratedCode-Core';
		  yourself