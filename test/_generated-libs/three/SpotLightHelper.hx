package three;
@:jsRequire("three", "SpotLightHelper") extern class SpotLightHelper extends Object3D {
	function new(light:Light, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : Light;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	var cone : LineSegments;
	function dispose():Void;
	function update():Void;
}