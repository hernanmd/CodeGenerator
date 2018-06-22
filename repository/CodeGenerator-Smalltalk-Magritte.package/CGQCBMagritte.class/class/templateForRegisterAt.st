code-templates
templateForRegisterAt

	^ 'registerAt: anApplicationName

	^(super registerAt: anApplicationName)
		addLibrary: (Smalltalk at: #TBSDeploymentLibrary);
		addLibrary: (Smalltalk at: #QCBootstrapMagritteLibrary);
		yourself'
