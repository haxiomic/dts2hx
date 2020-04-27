package three;
extern typedef ShaderMaterialParameters = MaterialParameters & { @:optional
	var defines : Any; @:optional
	var uniforms : Any; @:optional
	var vertexShader : String; @:optional
	var fragmentShader : String; @:optional
	var linewidth : Float; @:optional
	var wireframe : Bool; @:optional
	var wireframeLinewidth : Float; @:optional
	var lights : Bool; @:optional
	var clipping : Bool; @:optional
	var skinning : Bool; @:optional
	var morphTargets : Bool; @:optional
	var morphNormals : Bool; };