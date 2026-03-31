package global.three;

@:native("THREE.RingGeometry") extern class RingGeometry extends Geometry {
	function new(?innerRadius:Float, ?outerRadius:Float, ?thetaSegments:Float, ?phiSegments:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var innerRadius : Float;
		var outerRadius : Float;
		var thetaSegments : Float;
		var phiSegments : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	static var prototype : RingGeometry;
}