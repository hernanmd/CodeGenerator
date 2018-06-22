code-templates
templateForCloseAfterCreateProject

	^ 'closeAfterCreateProject
	" Answer <true> if receiver''s window should close after creation of a project "

	^ ' , self closeAfterCreateProjectSetting asString