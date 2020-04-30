package three;
@:jsRequire("three", "PointLightHelper") extern class PointLightHelper extends Object3D {
	function new(light:PointLight, ?sphereSize:Float, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : PointLight;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	function dispose():Void;
	function update():Void;
}