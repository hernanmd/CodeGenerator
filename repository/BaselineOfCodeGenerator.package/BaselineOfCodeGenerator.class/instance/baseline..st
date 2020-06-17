baseline
baseline: spec
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec
				baseline: 'CommonUtils' 			with: [ spec repository: 'github://hernanmd/CommonUtils/repository' ];
				baseline: 'StringExtensions'	with: [ spec repository: 'github://hernanmd/StringExtensions/repository' ];
				baseline: 'SpecUIAddOns'			with: [ spec repository: 'github://hernanmd/SpecUIAddOns/repository' ];
				baseline: 'Beacon'					with: [ spec repository: 'github://pharo-project/pharo-beacon/repository' ].
				self 
					projectForInstanceEncoder: spec;
					projectForMustache: spec;
					projectForNeoJSON: spec;
					projectForSoup: spec;
					projectForNeoCSV: spec.

		spec 
			package: 'CodeGenerator' 							with: [ spec requires: #('StringExtensions' 'CommonUtils'). ];
			package: 'CodeGenerator-Smalltalk-Core' 		with: [ spec requires: #('CodeGenerator') ];				
			package: 'CodeGenerator-Smalltalk-Generators' with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Core') ];
			package: 'CodeGenerator-GitHub' 					with: [ spec requires: #('CodeGenerator' 'Soup' 'NeoJSON') ];
			package: 'CodeGenerator-NSIS' 						with: [ spec requires: #('CodeGenerator' 'Mustache') ];
			package: 'CodeGenerator-ProjectFramework' 		with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators') ];
			package: 'CodeGenerator-Bash' 						with: [ spec requires: #('CodeGenerator') ];
			package: 'CodeGenerator-R' 							with: [ spec requires: #('CodeGenerator') ];
			package: 'CodeGenerator-NeoCSV'					with: [ spec requires: #('CodeGenerator-Smalltalk-Generators' 'NeoCSV') ];							
			package: 'CodeGenerator-Smalltalk-Magritte' 	with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators') ];									
			package: 'CodeGenerator-Pharo' 					with: [ spec requires: #('CodeGenerator'). ];
			package: 'CodeGenerator-SpecUI' 					with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators' 'Mustache' 'SpecUIAddOns' ) ];
			package: 'CodeGenerator-TravisCI'					with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators') ];
			package: 'CodeGenerator-Examples' 				with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Core' 'CodeGenerator-Smalltalk-Generators' 'CodeGenerator-NeoCSV' 'CodeGenerator-GitHub' 'CodeGenerator-NSIS' 'CodeGenerator-ProjectFramework' 'CodeGenerator-Bash' 'CodeGenerator-R' 'CodeGenerator-Smalltalk-Magritte' 'CodeGenerator-Pharo' 'CodeGenerator-SpecUI') ].

		spec for: #'pharo6.x' do: [ 
			spec package: 'CodeGenerator' with: [ spec requires: 'CodeGenerator-Pharo6' ].
			spec package: 'CodeGenerator-Pharo6' ].
	
		spec for: #'pharo7.x' do: [ 
			spec package: 'CodeGenerator' with: [ spec requires: 'CodeGenerator-Pharo7' ].
			spec package: 'CodeGenerator-Pharo7' ].
		
		spec for: #'pharo8.x' do: [ 
			spec package: 'CodeGenerator' with: [ spec requires: 'CodeGenerator-Pharo8' ].
			spec package: 'CodeGenerator-Pharo8' ].
	
		spec 
			group: 'Core' 						with: #('CodeGenerator');
			group: 'Smalltalk'					with: #('CodeGenerator-Smalltalk-Core' 'CodeGenerator-Pharo');
			group: 'Smalltalk-Generators'	with: #('CodeGenerator-Smalltalk-Generators' 'CodeGenerator-Pharo');									
			group: 'Examples'					with: #('CodeGenerator-Examples');
			group: 'NeoCSV'						with: #('CodeGenerator-NeoCSV');
			group: 'GitHub'						with: #('CodeGenerator-GitHub');
			group: 'NSIS'						with: #('CodeGenerator-NSIS');
			group: 'Bash'						with: #('CodeGenerator-Bash');
			group: 'R'							with: #('CodeGenerator-R');
			group: 'Magritte'					with: #('CodeGenerator-Smalltalk-Magritte');
			group: 'ProjectFramework'		with: #('CodeGenerator-ProjectFramework');
			group: 'SpecUI' 					with: #('CodeGenerator-SpecUI' 'CodeGenerator-Pharo' );
			group: 'TravisCI'					with: #('CodeGenerator-TravisCI');
			group: 'All' 						with: #('Core' 'Smalltalk' 'Smalltalk-Generators' 'GitHub' 'Bash' 'R' 'NSIS' 'Magritte' 'GitHub' 'SpecUI' 'ProjectFramework' 'CodeGenerator-Pharo' 'SpecUI' 'NeoCSV' 'Examples');
			group: 'default' 					with: #('Smalltalk-Generators' ) ]
