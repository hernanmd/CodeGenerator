*CodeGenerator-Pharo11
prvAddClassVar: iVarName withAccessorsIn: aClass

	self logInfo: 'Adding accessors for class variable named: ' , iVarName capitalized.
	model := RBNamespace new classNamed: aClass asString; yourself.	
	(RBAddClassVariableRefactoring 
			model: model
			variable: iVarName capitalized
			class: aClass asClass) primitiveExecute.
			
	model changes changes do: [ : change | RBRefactoryChangeManager instance performChange: change ].

	model := RBNamespace new classNamed: aClass asString; yourself.		
	(RBCreateCommentedAccessorsForVariableRefactoring
			model: model
			variable: iVarName capitalized
			class: aClass
			classVariable: true) primitiveExecute.
	model changes changes do: [ : change | RBRefactoryChangeManager instance performChange: change ].
	self logInfo: 'done'.