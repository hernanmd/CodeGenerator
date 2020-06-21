accessing
templatesSizeCount
	" Answer the kb sum of all receiver's templates "

	^ self templates sum: [ : templateFile | templateFile asFileReference size ]