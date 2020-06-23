utilities
filesInPath
	"Return a collection of absolute paths for all the files (no directories) in the directory given by aPathString 	must not include file names that start with ."

	^ fullPath
		ifNil: [ Array empty ]
		ifNotNil: [ self platform filesIn: self fullPath pathString ]