examples
example01

	self class new
	identity: 'Hernán Morales Durand';
	sections: #('badges' 'description' 'installation' 'usage' 'contribute' 'licenseText' 'authors');
	repositoryName: 'ProjectFramework';
	badges: #('mit' 'pr' );
	description: 'Framework to manage user projects in Pharo Smalltalk';
	installationText: 'There are several ways to install the **ProjectFramework**. At minimum, you need a working Pharo virtual image installed in your system. Check the Pharo website for installation information regarding the Pharo Open-Source system. Once Pharo is launched you have the following installation options:

- Install a "Core" group which only includes the minimum classes for project manangement.
- Install a "Basic" group which includes the "Core", Pharo specific methods mostly for using the Pharo built-in SettingsFramework, and Spec classes for generating UI with project management operations from templates.
- Install the "Tests" group which includes the "Basic" group.	';
	usageText: 'ProjectFramework is an open source library for project management at application level with Pharo Smalltalk. The ProjectFramework enables to build typical project-based GUI applications, without reinventing the wheel with code for project operations such as Save, Open, Versioning, etc. Spec UI elements can be automatically generated from templates with basic menu options very few lines of code.';
	stInstExpr: 'Metacello new	
  baseline: ''ProjectFramework'';	
  repository: ''github://hernanmd/ProjectFramework/repository'';	
  load.';
	devInstExpr: 'Metacello new	
  baseline: ''ProjectFramework'';	
  repository: ''github://hernanmd/ProjectFramework/repository'';	
  load.';
	generate.

