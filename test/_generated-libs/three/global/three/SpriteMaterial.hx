package global.three;

@:native("THREE.SpriteMaterial") extern class SpriteMaterial extends Material {
	function new(?parameters:SpriteMaterialParameters);
	var color : Color;
	var map : Null<Texture>;
	var rotation : Float;
	var sizeAttenuation : Bool;
	var isSpriteMaterial : Bool;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:SpriteMaterialParameters):Void;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(source:SpriteMaterial):SpriteMaterial;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():SpriteMaterial;
	static var prototype : SpriteMaterial;
}