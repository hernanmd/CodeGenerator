code-generation
selectorsToTest: aSelectorCollection

	^ aSelectorCollection copyWithoutAll: self exclusions 