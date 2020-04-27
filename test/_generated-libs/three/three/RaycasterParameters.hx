package three;
extern interface RaycasterParameters {
	@:optional
	var Mesh : Any;
	@:optional
	var Line : Any;
	@:optional
	var LOD : Any;
	@:optional
	var Points : { var threshold : Float; };
	@:optional
	var Sprite : Any;
}