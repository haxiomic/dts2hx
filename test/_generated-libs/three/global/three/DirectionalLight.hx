package global.three;

/**
	Affects objects using MeshLambertMaterial or MeshPhongMaterial.
**/
@:native("THREE.DirectionalLight") extern class DirectionalLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	/**
		Target used for shadow camera orientation.
	**/
	var target : Object3D;
	function copy(source:DirectionalLight, ?recursive:Bool):DirectionalLight;
	static var prototype : DirectionalLight;
}