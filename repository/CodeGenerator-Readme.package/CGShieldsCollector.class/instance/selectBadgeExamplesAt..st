accessing
selectBadgeExamplesAt: categoryName
	" Set a <String> valid to be used in an URL query to the receiver's endpoint "
	| shieldsCatName |
	
	shieldsCatName := categoryName copyReplaceAll: ' ' with: '-'.
	^ ((Soup fromUrl: self shieldsUrl , shieldsCatName) findAllTags: 'table') 
			select: [ :t | (t hasAttribute: 'class') and: [ t @ 'class' beginsWith: 'badge-examples' ] ]