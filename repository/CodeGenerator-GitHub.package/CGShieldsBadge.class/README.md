A badge is a validated indicator of accomplishment, skill, quality or interest that can be earned in various learning environments.

This class provides attributes related with a Shields.io badge.

A custom badge:

CGShieldsBadge custom
	subject: 'Test';
	status: 'Status';
	color: Color red;
	getBadge.

(CGShieldsBadge for: #travisOrg)
	repository: 'ProjectFramework';
	user: 'hernanmd';
	getBadge.

CGShieldsBadge forTravisBranch
	repository: 'BioSmalltalk';
	user: 'hernanmd';
	branch: 'dev';
	getBadge.

    Instance Variables
	badgeImg:		<Object>
	badgeName:		<Object>
	color:		<Object>
	colorA:		<Object>
	colorB:		<Object>
	logo:		<Object>
	status:		<Object>
	style:		<Object>
	subject:		<Object>


    Implementation Points