testing
hasAuthoringBehavior
	" Private - Answer <true> if the receiver's has facilities for setting authoring information "

	^ self isAuthoringWithAuthor or: [ self isAuthoringWithUtilities ]