package vscode;

/**
	Represents a color in RGBA space.
**/
@:jsRequire("vscode", "Color") extern class Color {
	/**
		Creates a new color instance.
	**/
	function new(red:Float, green:Float, blue:Float, alpha:Float);
	/**
		The red component of this color in the range [0-1].
	**/
	final red : Float;
	/**
		The green component of this color in the range [0-1].
	**/
	final green : Float;
	/**
		The blue component of this color in the range [0-1].
	**/
	final blue : Float;
	/**
		The alpha component of this color in the range [0-1].
	**/
	final alpha : Float;
	static var prototype : Color;
}