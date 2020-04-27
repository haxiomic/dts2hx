package three;
extern interface MeshDepthMaterialParameters extends MaterialParameters {
	@:optional
	var depthPacking : DepthPackingStrategies;
	@:optional
	var displacementMap : Texture;
	@:optional
	var displacementScale : Float;
	@:optional
	var displacementBias : Float;
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
}