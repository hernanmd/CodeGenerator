code-generation
generateDirector

	CGSmalltalk new
		setCleanTarget;
		targetClassCategory: self targetClassCategory;
		targetClass: self directorClassName;
		addInstanceVariables: #(#builder).