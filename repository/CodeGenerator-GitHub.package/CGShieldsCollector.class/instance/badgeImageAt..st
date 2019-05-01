accessing
badgeImageAt: imgURLString

	^ ZnEasy getPng: (imgURLString copyReplaceAll: '.svg' with: '.png')