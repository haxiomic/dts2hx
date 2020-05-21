package three;

@:jsRequire("three", "RingBufferGeometry") extern class RingBufferGeometry extends BufferGeometry {
	function new(?innerRadius:Float, ?outerRadius:Float, ?thetaSegments:Float, ?phiSegments:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var innerRadius : Float;
		var outerRadius : Float;
		var thetaSegments : Float;
		var phiSegments : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	function clone():RingBufferGeometry;
	function copy(source:BufferGeometry):RingBufferGeometry;
	static var prototype : RingBufferGeometry;
}