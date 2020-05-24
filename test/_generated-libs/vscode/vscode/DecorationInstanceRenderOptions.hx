package vscode;

typedef DecorationInstanceRenderOptions = {
	/**
		Overwrite options for light themes.
	**/
	@:optional
	var light : ThemableDecorationInstanceRenderOptions;
	/**
		Overwrite options for dark themes.
	**/
	@:optional
	var dark : ThemableDecorationInstanceRenderOptions;
	/**
		Defines the rendering options of the attachment that is inserted before the decorated text.
	**/
	@:optional
	var before : ThemableDecorationAttachmentRenderOptions;
	/**
		Defines the rendering options of the attachment that is inserted after the decorated text.
	**/
	@:optional
	var after : ThemableDecorationAttachmentRenderOptions;
};