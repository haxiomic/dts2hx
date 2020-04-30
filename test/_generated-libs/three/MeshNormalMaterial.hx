package three;
@:jsRequire("three", "MeshNormalMaterial") extern class MeshNormalMaterial extends Material {
	function new(?parameters:MeshNormalMaterialParameters);
	var bumpMap : Null<Texture>;
	var bumpScale : Float;
	var normalMap : Null<Texture>;
	var normalMapType : NormalMapTypes;
	var normalScale : Vector2;
	var displacementMap : Null<Texture>;
	var displacementScale : Float;
	var displacementBias : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
}