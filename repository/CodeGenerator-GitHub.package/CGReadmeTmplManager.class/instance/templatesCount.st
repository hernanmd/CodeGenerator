accessing
templatesCount
	" Answer a <Number> of the total count of template types found in the current templates directory "

	^ (self templateEntries collect: [ : templateTypeEntry | templateTypeEntry asFileReference entries ])
			sum: #size