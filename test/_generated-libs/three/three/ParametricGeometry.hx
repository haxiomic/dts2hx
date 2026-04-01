package three;

@:jsRequire("three", "ParametricGeometry") extern class ParametricGeometry extends Geometry {
	function new(func:(u:Float, v:Float, dest:Vector3) -> Void, slices:Float, stacks:Float);
	var parameters : {
		dynamic function func(u:Float, v:Float, dest:Vector3):Void;
		var slices : Float;
		var stacks : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):ParametricGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():ParametricGeometry;
	function copy(source:Geometry):ParametricGeometry;
	static var prototype : ParametricGeometry;
}