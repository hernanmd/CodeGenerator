opening
openFor: aCGReadmeUI 

	self owner: aCGReadmeUI.
	(CGReadmeSettingBrowser forKeywords: #('cgReadmeSettings')) 
		open;
		expandAll