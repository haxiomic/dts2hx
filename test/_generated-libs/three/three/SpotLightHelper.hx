package three;
@:jsRequire("three", "SpotLightHelper") extern class SpotLightHelper extends Object3D {
	function new(light:Light, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : Light;
	/**
		Local transform.
	**/
	var matrix : Matrix4;
	/**
		When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
	**/
	var matrixAutoUpdate : Bool;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	var cone : LineSegments;
	function dispose():Void;
	function update():Void;
}