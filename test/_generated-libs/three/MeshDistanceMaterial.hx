package three;
@:jsRequire("three", "MeshDistanceMaterial") extern class MeshDistanceMaterial extends Material {
	function new(?parameters:MeshDistanceMaterialParameters);
	var referencePosition : Vector3;
	var nearDistance : Float;
	var farDistance : Float;
	var displacementMap : Null<Texture>;
	var displacementScale : Float;
	var displacementBias : Float;
}