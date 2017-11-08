baselines
baseline11: spec
	<version: '1.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.smalltalkhub.com/mc/hernan/CodeGenerator/main'.
		spec 
			project: 'CommonUtils' with: [
				spec
					className: #ConfigurationOfCommonUtils;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/hernan/CommonUtils/main/' ];
			project: 'Grease' with: [
				spec
					className: #ConfigurationOfGrease;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/';
					repository: 'http://www.smalltalkhub.com/mc/hernan/Grease/main' ];
			project: 'InstanceEncoder' with: [
				spec
					className: #ConfigurationOfInstanceEncoder;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/hernan/InstanceEncoder/main/' ];
			project: 'Log4s' with: [
				spec
					className: #ConfigurationOfLog4s;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ];
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
				spec requires: #('Grease' 'Log4s' 'StringExtensions' 'Mustache' 'InstanceEncoder' 'CommonUtils' ). ];
			package: #'CodeGenerator-Pharo' with: [
				spec requires: #('CodeGenerator' ). ];
			package: #'CodeGenerator-SpecUI' with: [
				spec requires: #('CodeGenerator' ). ].
		spec 
			group: 'UI' with: #('CodeGenerator-SpecUI' #'CodeGenerator-Pharo' );
			group: 'default' with: #('CodeGenerator' ). ].
