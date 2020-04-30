package three;
@:jsRequire("three", "CircleBufferGeometry") extern class CircleBufferGeometry extends BufferGeometry {
	function new(?radius:Float, ?segments:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var radius : Float;
		var segments : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
}