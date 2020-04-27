package three;
@:jsRequire("three", "HemisphereLightHelper") extern class HemisphereLightHelper extends Object3D {
	function new(light:HemisphereLight, size:Float, ?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>);
	var light : HemisphereLight;
	/**
		Local transform.
	**/
	var matrix : Matrix4;
	/**
		When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
	**/
	var matrixAutoUpdate : Bool;
	var material : MeshBasicMaterial;
	var color : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>>;
	function dispose():Void;
	function update():Void;
}