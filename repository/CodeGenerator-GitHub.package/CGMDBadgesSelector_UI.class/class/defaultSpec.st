specs
defaultSpec
    <spec>
    ^ SpecLayout composed
			newRow: [ : r |
				r 
					add: #badgeTypes width: 100;
					newColumn: [ : c | 
						c
							add: #badgesList;
							add: #toolbar height: self toolbarHeight. ];
					add: #badgesSelection ]