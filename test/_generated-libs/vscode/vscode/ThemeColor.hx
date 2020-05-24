package vscode;

/**
	A reference to one of the workbench colors as defined in https://code.visualstudio.com/docs/getstarted/theme-color-reference.
	Using a theme color is preferred over a custom color as it gives theme authors and users the possibility to change the color.
**/
@:jsRequire("vscode", "ThemeColor") extern class ThemeColor {
	/**
		Creates a reference to a theme color.
	**/
	function new(id:String);
	static var prototype : ThemeColor;
}