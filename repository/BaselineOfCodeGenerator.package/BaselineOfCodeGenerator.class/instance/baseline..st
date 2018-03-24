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
				project: 'Log4s' with: [
					spec
						className: #ConfigurationOfLog4s;
						versionString: #'stable';
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ].

		spec 
			package: 'CodeGenerator' with: [
				spec requires: #('Log4s' 'StringExtensions' 'Mustache' 'InstanceEncoder' 'CommonUtils' 'SpecUIAddOns'). ];
			package: #'CodeGenerator-Pharo' with: [
				spec requires: #('CodeGenerator' ). ];
			package: #'CodeGenerator-SpecUI' with: [
				spec requires: #('CodeGenerator' ). ].
		spec 
			group: 'All' with: #('CodeGenerator' #'CodeGenerator-Pharo' #'CodeGenerator-SpecUI' );
			group: 'UI' with: #('CodeGenerator-SpecUI' #'CodeGenerator-Pharo' );
			group: 'default' with: #('All' ) ]
