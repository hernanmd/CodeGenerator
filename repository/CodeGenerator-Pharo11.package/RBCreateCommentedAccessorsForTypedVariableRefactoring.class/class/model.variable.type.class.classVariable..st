instance creation
model: aRBSmalltalk variable: aVarName type: typeName class: aClass classVariable: aBoolean 

	^ (self 
		model: aRBSmalltalk
		variable: aVarName
		class: aClass)
		type: typeName;
		classVariable: aBoolean;
		yourself