package three;

@:jsRequire("three", "PlaneGeometry") extern class PlaneGeometry extends Geometry {
	function new(?width:Float, ?height:Float, ?widthSegments:Float, ?heightSegments:Float);
	var parameters : {
		var width : Float;
		var height : Float;
		var widthSegments : Float;
		var heightSegments : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):PlaneGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():PlaneGeometry;
	function copy(source:Geometry):PlaneGeometry;
	static var prototype : PlaneGeometry;
}