package global.three;

@:native("THREE.Shading") @:enum extern abstract Shading(Any) from Any to Any {
	var FlatShading : Shading;
	var SmoothShading : Shading;
}