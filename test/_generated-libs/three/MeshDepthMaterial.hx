package three;
@:jsRequire("three", "MeshDepthMaterial") extern class MeshDepthMaterial extends Material {
	function new(?parameters:MeshDepthMaterialParameters);
	var depthPacking : DepthPackingStrategies;
	var displacementMap : Null<Texture>;
	var displacementScale : Float;
	var displacementBias : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
}