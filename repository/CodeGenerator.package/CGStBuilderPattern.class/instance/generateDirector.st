code-generation
generateDirector

	CGSmalltalk uniqueInstance
		setCleanTarget;
		targetClassCategory: self targetClassCategory;
		targetClass: self directorClassName;
		addInstanceVariables: #(#builder).