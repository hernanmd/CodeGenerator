accessing
selectBadgeExamplesAt: categoryName

	| shieldsCatName |
	
	shieldsCatName := self asShieldCatName: categoryName.
	^ ((Soup fromUrl: self shieldsUrl , shieldsCatName) findAllTags: 'table') 
			select: [ :t | (t hasAttribute: 'class') and: [ t @ 'class' beginsWith: 'badge-examples' ] ]