package three;
extern typedef MeshNormalMaterialParameters = MaterialParameters & { @:optional
	var bumpMap : Texture; @:optional
	var bumpScale : Float; @:optional
	var normalMap : Texture; @:optional
	var normalMapType : NormalMapTypes; @:optional
	var normalScale : Vector2; @:optional
	var displacementMap : Texture; @:optional
	var displacementScale : Float; @:optional
	var displacementBias : Float; @:optional
	var wireframe : Bool; @:optional
	var wireframeLinewidth : Float; @:optional
	var skinning : Bool; @:optional
	var morphTargets : Bool; @:optional
	var morphNormals : Bool; };