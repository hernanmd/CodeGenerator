code-cleaning
cleanAllMethodsInCategory: categoryName
	" Remove all selectors found in categoryName "
	
	((self classFor: self targetClass) organization listAtCategoryNamed: categoryName)
		do: [ : mth | (self classFor: self targetClass) removeSelector: mth ]