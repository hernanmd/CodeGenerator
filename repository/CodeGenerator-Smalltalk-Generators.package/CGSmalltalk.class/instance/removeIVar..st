code-cleaning
removeIVar: iVarName
	" Remove the instance variable iVarName from the receiver's target class "

	self codeTransformer removeIVar: iVarName