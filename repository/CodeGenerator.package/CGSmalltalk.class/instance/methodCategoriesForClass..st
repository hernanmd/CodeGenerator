accessing
methodCategoriesForClass: aClass 
	" Answer a <Collection> with all (non-null) method categories in aClass "

	^ aClass organization categories 
		reject: [ : cat | cat = Categorizer nullCategory ]