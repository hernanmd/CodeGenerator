code-cleaning
removeInstVar: iVarName
	" Remove the instance variable iVarName from the receiver's target class "

	self codeTransformer removeInstVar: iVarName