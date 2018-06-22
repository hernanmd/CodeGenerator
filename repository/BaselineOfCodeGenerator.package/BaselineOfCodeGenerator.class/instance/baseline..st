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
				baseline: 'Beacon'					with: [ spec repository: 'github://pharo-project/pharo-beacon/repository' ];
				project: 'InstanceEncoder' 		with: [
					spec
						className: #ConfigurationOfInstanceEncoder;
						versionString: #'stable';
						repository: 'http://smalltalkhub.com/mc/hernan/InstanceEncoder/main/' ];
				project: 'Mustache' with: [
					spec
						className: #ConfigurationOfMustache;
						versionString: #'stable';
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/' ];
				project: 'NeoCSV' with: [
					spec
						className: 'ConfigurationOfNeoCSV';
						version: #stable;
						repository: 'github://svenvc/NeoCVS:master/repository' ].

		spec 
			package: 'CodeGenerator' 							with: [ spec requires: #('StringExtensions' 'CommonUtils'). ];
			package: 'CodeGenerator-Smalltalk-Core' 		with: [ spec requires: #('CodeGenerator') ];				
			package: 'CodeGenerator-Smalltalk-Generators' with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Core') ];
			package: 'CodeGenerator-GitHub' 					with: [ spec requires: #('CodeGenerator') ];
			package: 'CodeGenerator-NSIS' 						with: [ spec requires: #('CodeGenerator' 'Mustache') ];
			package: 'CodeGenerator-ProjectFramework' 		with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators') ];
			package: 'CodeGenerator-Bash' 						with: [ spec requires: #('CodeGenerator') ];
			package: 'CodeGenerator-R' 							with: [ spec requires: #('CodeGenerator') ];
			package: 'CodeGenerator-NeoCSV'					with: [ spec requires: #('CodeGenerator-Smalltalk-Generators' 'NeoCSV') ];							
			package: 'CodeGenerator-Magritte' 				with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators') ];									
			package: 'CodeGenerator-Pharo' 					with: [ spec requires: #('CodeGenerator'). ];
			package: 'CodeGenerator-SpecUI' 					with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Generators' 'Mustache' 'SpecUIAddOns' ) ];
			package: 'CodeGenerator-Examples' 				with: [ spec requires: #('CodeGenerator' 'CodeGenerator-Smalltalk-Core' 'CodeGenerator-Smalltalk-Generators' 'CodeGenerator-NeoCSV' 'CodeGenerator-GitHub' 'CodeGenerator-NSIS' 'CodeGenerator-ProjectFramework' 'CodeGenerator-Bash' 'CodeGenerator-R' 'CodeGenerator-Magritte' 'CodeGenerator-Pharo' 'CodeGenerator-SpecUI') ].
							
		spec 
			group: 'Core' 						with: #('CodeGenerator');
			group: 'Smalltalk'					with: #('CodeGenerator-Smalltalk-Core');
			group: 'Smalltalk-Generators'	with: #('CodeGenerator-Smalltalk-Generators');									
			group: 'Examples'					with: #('CodeGenerator-Examples');
			group: 'GitHub'						with: #('CodeGenerator-GitHub');
			group: 'NSIS'						with: #('CodeGenerator-NSIS');
			group: 'Bash'						with: #('CodeGenerator-Bash');
			group: 'R'							with: #('CodeGenerator-R');
			group: 'Magritte'					with: #('CodeGenerator-Magritte');
			group: 'ProjectFramework'		with: #('CodeGenerator-ProjectFramework');
			group: 'SpecUI' 					with: #('CodeGenerator-SpecUI' 'CodeGenerator-Pharo' );
			group: 'All' 						with: #('Core' 'Smalltalk' 'Smalltalk-Generators' 'GitHub' 'Bash' 'R' 'NSIS' 'Magritte' 'GitHub' 'UI' 'ProjectFramework' 'CodeGenerator-Pharo' 'SpecUI' );
			group: 'default' 					with: #('Smalltalk-Generators' ) ]
