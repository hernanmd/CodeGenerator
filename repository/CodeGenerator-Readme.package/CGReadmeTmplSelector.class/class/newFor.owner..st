instance creation
newFor: aString owner: aComposablePresenter

	^ self basicNew 
		owner: aComposablePresenter;
		template: aString;
		initialize;
		openWithSpec