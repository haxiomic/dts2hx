package three;

@:jsRequire("three", "RingGeometry") extern class RingGeometry extends Geometry {
	function new(?innerRadius:Float, ?outerRadius:Float, ?thetaSegments:Float, ?phiSegments:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var innerRadius : Float;
		var outerRadius : Float;
		var thetaSegments : Float;
		var phiSegments : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):RingGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():RingGeometry;
	function copy(source:Geometry):RingGeometry;
	static var prototype : RingGeometry;
}