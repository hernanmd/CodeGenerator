utility
filesInPath
	"Return a collection of absolute paths for all the files (no directories) in the directory given by aPathString 	must not include file names that start with ."

	^ fullPath isNil
		ifFalse: [ self platform filesIn: self fullPath pathString ]
		ifTrue: [ Array empty ]
