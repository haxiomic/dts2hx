package vscode;

/**
	Represents a location inside a resource, such as a line
	inside a text file.
**/
@:jsRequire("vscode", "Location") extern class Location {
	/**
		Creates a new location object.
	**/
	function new(uri:Uri, rangeOrPosition:ts.AnyOf2<Range, Position>);
	/**
		The resource identifier of this location.
	**/
	var uri : Uri;
	/**
		The document range of this location.
	**/
	var range : Range;
	static var prototype : Location;
}