accessing
initializeDefaultTemplates

	self defaultTemplates do: [ : tmplSel | self addTemplate: (self perform: tmplSel) ]