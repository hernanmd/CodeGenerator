accessing
readmeGenerator

	^ readmeGenerator
		ifNil: [ readmeGenerator := CGReadme new ]