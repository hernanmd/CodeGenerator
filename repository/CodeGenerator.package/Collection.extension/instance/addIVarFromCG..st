*CodeGenerator
addIVarFromCG: aCGSmalltalk
	" Add instance variables from the receiver's elements to aCGSmalltalk code generator "

	self do: [ : iVar | aCGSmalltalk codeTransformer addIVarWithAccessors: iVar ]