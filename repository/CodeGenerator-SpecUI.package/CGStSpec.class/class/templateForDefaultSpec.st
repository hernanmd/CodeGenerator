code-templates
templateForDefaultSpec

	^ 'defaultSpec

    <spec>
    ^ SpecLayout composed
		newColumn: [ : c | 
			c
				{{ defaultSpecInstVarsCtx }} ]'
