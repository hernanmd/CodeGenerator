code-templates
templateForDefaultSpec
	" Answer a <String> with valid spec definition code "

	^ 'defaultSpec

    <spec>
    ^ SpecLayout composed
		newColumn: [ : c | 
			c
				{{ defaultSpecInstVarsCtx }} ]'
