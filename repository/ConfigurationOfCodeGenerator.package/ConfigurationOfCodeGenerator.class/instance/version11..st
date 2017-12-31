versions
version11: spec
	<version: '1.1' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.1'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '12/31/2017 18:09'.
		spec 
			project: 'CommonUtils' with: '0.2-baseline';
			project: 'Grease' with: '1.3.0';
			project: 'InstanceEncoder' with: '1.5';
			project: 'Log4s' with: '1.0';
			project: 'Mustache' with: '0.74';
			project: 'StringExtensions' with: '1.1'.
		spec 
			package: 'CodeGenerator' with: 'CodeGenerator-HernanMoralesDurand.107';
			package: #'CodeGenerator-Pharo' with: 'CodeGenerator-Pharo-HernanMoralesDurand.4';
			package: #'CodeGenerator-SpecUI' with: 'CodeGenerator-SpecUI-HernanMoralesDurand.8'. ].
