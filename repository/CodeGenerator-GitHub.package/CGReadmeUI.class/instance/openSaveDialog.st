private
openSaveDialog

	^ FDSaveFileDialog new
		defaultFolder: FileLocator home asFileReference;
		fileFilters: #('*.md');
		openModal