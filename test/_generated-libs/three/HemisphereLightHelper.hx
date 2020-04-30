package three;
@:jsRequire("three", "HemisphereLightHelper") extern class HemisphereLightHelper extends Object3D {
	function new(light:HemisphereLight, size:Float, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : HemisphereLight;
	var material : MeshBasicMaterial;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	function dispose():Void;
	function update():Void;
}