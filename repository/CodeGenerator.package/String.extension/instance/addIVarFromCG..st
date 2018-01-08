*CodeGenerator
addIVarFromCG: aCGSmalltalk
	" See superimplementor's comment "

	(self findTokens: Character space) 
		do: [ : iVar | aCGSmalltalk codeTransformer addIVarWithAccessors: iVar ]
		displayingProgress: 'Adding instance variables...'