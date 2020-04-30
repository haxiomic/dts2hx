package three;
@:jsRequire("three", "ParametricGeometry") extern class ParametricGeometry extends Geometry {
	function new(func:(u:Float, v:Float, dest:Vector3) -> Void, slices:Float, stacks:Float);
	var parameters : {
		var func : (u:Float, v:Float, dest:Vector3) -> Void;
		var slices : Float;
		var stacks : Float;
	};
}