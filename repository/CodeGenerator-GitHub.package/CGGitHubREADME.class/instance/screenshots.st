accessing
screenshots
	" Assume screenshots is a <String> with a file path containing all image files to be added as screenshots in the README. Answer a <Collection> of <String> representing the file names "
	
	^ screenshots asFileReference children collect: #basename