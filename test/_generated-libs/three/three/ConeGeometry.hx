package three;

@:jsRequire("three", "ConeGeometry") extern class ConeGeometry extends CylinderGeometry {
	function new(?radius:Float, ?height:Float, ?radialSegment:Float, ?heightSegment:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):ConeGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():ConeGeometry;
	function copy(source:Geometry):ConeGeometry;
	static var prototype : ConeGeometry;
}