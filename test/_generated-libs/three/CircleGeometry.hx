package three;
@:jsRequire("three", "CircleGeometry") extern class CircleGeometry extends Geometry {
	function new(?radius:Float, ?segments:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var radius : Float;
		var segments : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
}