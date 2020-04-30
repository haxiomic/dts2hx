package three;
@:jsRequire("three", "DirectionalLightHelper") extern class DirectionalLightHelper extends Object3D {
	function new(light:DirectionalLight, ?size:Float, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : DirectionalLight;
	var lightPlane : Line;
	var targetPlane : Line;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	function dispose():Void;
	function update():Void;
}