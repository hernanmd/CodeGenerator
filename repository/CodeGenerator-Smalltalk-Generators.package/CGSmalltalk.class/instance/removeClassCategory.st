code-cleaning
removeClassCategory
	" Remove receiver's classCategoryName "

	^ SystemOrganizer default 
			removeSystemCategory: self classCategoryName