specs
defaultSpec
    <spec>

    ^ SpecLayout composed
			newColumn: [ : r | 
				r
					add: #licenseList 	 			height: self inputTextHeight;
					add: #isOsiApproved 	 		height: self inputTextHeight + 5;
					add: #isDeprecated				height: self inputTextHeight;
					add: #licenseId 	 			height: self inputTextHeight + 5;
					add: #licenseUrl 	 	 		height: self inputTextHeight + 5;
					add: #licenseComments 		height: self inputTextHeight + 60;
					add: #licenseText;
					add: #toolbar 					height:  self toolbarHeight ];
		yourself.
