specs
defaultSpec

    <spec>
    ^ SpecLayout composed
		newColumn: [ : c | 
			c
				add: #repositoryName;
			add: #descriptionText;
			add: #installationText;
			add: #stInstExpr;
			add: #devInstExpr;
			add: #usageNotes;
			add: #usageText;
			add: #badges. ]