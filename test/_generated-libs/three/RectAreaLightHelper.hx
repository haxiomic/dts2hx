package three;
@:jsRequire("three", "RectAreaLightHelper") extern class RectAreaLightHelper extends Line {
	function new(light:RectAreaLight, ?color:ts.AnyOf3<String, Float, Color>);
	var light : RectAreaLight;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function update():Void;
	function dispose():Void;
}