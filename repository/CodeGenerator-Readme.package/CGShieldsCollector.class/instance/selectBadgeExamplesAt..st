accessing
selectBadgeExamplesAt: categoryName

	^ ((Soup fromUrl: self shieldsUrl , categoryName) findAllTags: 'table') 
			select: [ :t | (t hasAttribute: 'class') and: [ t @ 'class' beginsWith: 'badge-examples' ] ]