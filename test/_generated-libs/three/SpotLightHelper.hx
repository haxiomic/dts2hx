package three;
@:jsRequire("three", "SpotLightHelper") extern class SpotLightHelper extends Object3D {
	function new(light:Light, ?color:ts.AnyOf3<String, Float, Color>);
	var light : Light;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	var cone : LineSegments;
	function dispose():Void;
	function update():Void;
}