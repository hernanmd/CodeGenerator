accessing
templateEntries
	" Answer a <Collection> of directory entries exluding git directories "

	^ (self templatesDir entries select: [ :entry | entry isDirectory ])
			reject: [ : templateTypeDir | templateTypeDir fullName endsWith: '.git' ]