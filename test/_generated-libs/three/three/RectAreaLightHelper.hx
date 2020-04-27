package three;
@:jsRequire("three", "RectAreaLightHelper") extern class RectAreaLightHelper extends Line {
	function new(light:RectAreaLight, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : RectAreaLight;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	function update():Void;
	function dispose():Void;
}