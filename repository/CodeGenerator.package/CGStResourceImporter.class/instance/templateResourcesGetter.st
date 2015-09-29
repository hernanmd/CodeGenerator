code-templates
templateResourcesGetter

	^ 'resources

	^ Resources
		ifNil: [ Resources := IdentityDictionary new ]'