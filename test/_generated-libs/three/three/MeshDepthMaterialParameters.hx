package three;
extern typedef MeshDepthMaterialParameters = MaterialParameters & { @:optional
	var depthPacking : DepthPackingStrategies; @:optional
	var displacementMap : Texture; @:optional
	var displacementScale : Float; @:optional
	var displacementBias : Float; @:optional
	var wireframe : Bool; @:optional
	var wireframeLinewidth : Float; };