specs
defaultSpec

    <spec>
    ^ SpecLayout composed
			newRow: [ : c | 
				c 
					newColumn: [ : r | 
						r
							add: #templateList;
							add: #toolbar 				height: self inputTextHeight ] ];
			yourself.
