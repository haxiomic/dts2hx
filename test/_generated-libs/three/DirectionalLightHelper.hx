package three;
@:jsRequire("three", "DirectionalLightHelper") extern class DirectionalLightHelper extends Object3D {
	function new(light:DirectionalLight, ?size:Float, ?color:ts.AnyOf3<String, Float, Color>);
	var light : DirectionalLight;
	var lightPlane : Line;
	var targetPlane : Line;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function dispose():Void;
	function update():Void;
}