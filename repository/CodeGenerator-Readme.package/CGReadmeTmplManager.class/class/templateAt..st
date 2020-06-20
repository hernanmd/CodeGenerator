accessing
templateAt: tmplName

	^ self defaultTemplates detect: [ : defTmpl | defTmpl templateLocation = tmplName ]