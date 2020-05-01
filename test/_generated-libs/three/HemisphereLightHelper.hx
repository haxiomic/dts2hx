package three;
@:jsRequire("three", "HemisphereLightHelper") extern class HemisphereLightHelper extends Object3D {
	function new(light:HemisphereLight, size:Float, ?color:ts.AnyOf3<String, Float, Color>);
	var light : HemisphereLight;
	var material : MeshBasicMaterial;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function dispose():Void;
	function update():Void;
}