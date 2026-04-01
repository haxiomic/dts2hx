package three;

@:jsRequire("three", "SphereBufferGeometry") extern class SphereBufferGeometry extends BufferGeometry {
	function new(?radius:Float, ?widthSegments:Float, ?heightSegments:Float, ?phiStart:Float, ?phiLength:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var radius : Float;
		var widthSegments : Float;
		var heightSegments : Float;
		var phiStart : Float;
		var phiLength : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	function clone():SphereBufferGeometry;
	function copy(source:BufferGeometry):SphereBufferGeometry;
	static var prototype : SphereBufferGeometry;
}