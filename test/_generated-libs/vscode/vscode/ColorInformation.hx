package vscode;

/**
	Represents a color range from a document.
**/
@:jsRequire("vscode", "ColorInformation") extern class ColorInformation {
	/**
		Creates a new color range.
	**/
	function new(range:Range, color:Color);
	/**
		The range in the document where this color appears.
	**/
	var range : Range;
	/**
		The actual color value for this color range.
	**/
	var color : Color;
	static var prototype : ColorInformation;
}