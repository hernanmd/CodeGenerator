instance creation
newFor: aFileReference owner: aComposablePresenter

	^ self basicNew 
		owner: aComposablePresenter;
		template: aFileReference;
		initialize;
		openModal