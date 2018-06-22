code-cleaning
cleanAllMethodCategories
	shouldCleanAllTargetMethods
		ifTrue: [ 
			(self methodCategoriesForClass: (self classFor: targetClass))
				do: [ :cat | (self classFor: targetClass) organization removeCategory: cat ] ]