baselines
baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.smalltalkhub.com/mc/hernan/CodeGenerator/main'.
		spec project: 'Grease' with: [
				spec
					className: #ConfigurationOfGrease;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/';
					repository: 'http://www.smalltalkhub.com/mc/hernan/Grease/main' ].
		spec package: 'CodeGenerator' with: [
				spec requires: #('Grease' ). ].
		spec group: 'default' with: #('CodeGenerator' ). ].
