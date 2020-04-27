package three;
@:jsRequire("three", "ConeGeometry") extern class ConeGeometry extends CylinderGeometry {
	function new(?radius:Float, ?height:Float, ?radialSegment:Float, ?heightSegment:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
}