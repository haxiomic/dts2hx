package three;
@:jsRequire("three", "DirectionalLightHelper") extern class DirectionalLightHelper extends Object3D {
	function new(light:DirectionalLight, ?size:Float, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : DirectionalLight;
	var lightPlane : Line;
	var targetPlane : Line;
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