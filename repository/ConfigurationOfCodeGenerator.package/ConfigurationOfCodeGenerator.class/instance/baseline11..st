baselines
baseline11: spec
	<version: '1.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.smalltalkhub.com/mc/hernan/CodeGenerator/main'.
		spec 
			project: 'Grease' with: [
				spec
					className: #ConfigurationOfGrease;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/';
					repository: 'http://www.smalltalkhub.com/mc/hernan/Grease/main' ];
			project: 'Log4s' with: [
				spec
					className: #ConfigurationOfLog4s;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ];
			project: 'InstanceEncoder' with: [
				spec
					className: #ConfigurationOfInstanceEncoder;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/hernan/InstanceEncoder/main/' ];
			project: 'Mustache' with: [
				spec
					className: #ConfigurationOfMustache;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ];
			project: 'StringExtensions' with: [
				spec
					className: #ConfigurationOfStringExtensions;
					versionString: #'bleedingEdge';
					repository: 'http://smalltalkhub.com/mc/hernan/StringExtensions/main/' ].
		spec 
			package: 'CodeGenerator' with: [
				spec requires: #('Grease' 'Log4s' ). ];
			package: #'CodeGenerator-SpecUI' with: [
				spec requires: #('CodeGenerator' ). ].
		spec 
			group: 'default' with: #('CodeGenerator' );
			group: 'UI' with: #('CodeGenerator-SpecUI' ). ].
