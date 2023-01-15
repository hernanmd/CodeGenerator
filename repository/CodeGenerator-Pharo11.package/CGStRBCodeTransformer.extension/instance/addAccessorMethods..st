*CodeGenerator-Pharo11
addAccessorMethods: iVarName

	self logInfo: 'Adding accessors for instance variable named: ' , iVarName.
	className := self targetClass name.
	(RBCreateAccessorsForVariableTransformation
			model: model
			variable: iVarName
			class: theClass
			classVariable: false) execute.
	self logInfo: 'done'