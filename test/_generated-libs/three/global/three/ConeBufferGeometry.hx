package global.three;

@:native("THREE.ConeBufferGeometry") extern class ConeBufferGeometry extends CylinderBufferGeometry {
	function new(?radius:Float, ?height:Float, ?radialSegment:Float, ?heightSegment:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
	static var prototype : ConeBufferGeometry;
}