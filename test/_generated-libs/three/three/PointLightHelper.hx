package three;
@:jsRequire("three", "PointLightHelper") extern class PointLightHelper extends Object3D {
	function new(light:PointLight, ?sphereSize:Float, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : PointLight;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	/**
		Local transform.
	**/
	var matrix : Matrix4;
	/**
		When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
	**/
	var matrixAutoUpdate : Bool;
	function dispose():Void;
	function update():Void;
}