package three;

@:jsRequire("three", "PointsMaterial") extern class PointsMaterial extends Material {
	function new(?parameters:PointsMaterialParameters);
	var color : Color;
	var map : Null<Texture>;
	var size : Float;
	var sizeAttenuation : Bool;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:PointsMaterialParameters):Void;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():PointsMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):PointsMaterial;
	static var prototype : PointsMaterial;
}