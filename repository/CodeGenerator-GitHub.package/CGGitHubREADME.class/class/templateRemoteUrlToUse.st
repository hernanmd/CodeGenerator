accessing
templateRemoteUrlToUse
	
	^ TemplateRemoteUrlToUse
		ifNil: [ TemplateRemoteUrlToUse := self defaultTemplateRemoteUrlToUse ]