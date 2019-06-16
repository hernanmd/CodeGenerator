accessing
templateAt: tmplName

	^ self defaultTemplates detect: [ : defTmpl | defTmpl templateName = tmplName ]