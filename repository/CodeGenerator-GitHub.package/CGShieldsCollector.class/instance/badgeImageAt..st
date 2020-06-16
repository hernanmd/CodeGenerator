accessing
badgeImageAt: imgURLString

	^ ZnEasy getSvg: (imgURLString copyReplaceAll: '.svg' with: '.png')