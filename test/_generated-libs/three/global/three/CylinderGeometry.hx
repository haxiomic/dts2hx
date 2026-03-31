package global.three;

@:native("THREE.CylinderGeometry") extern class CylinderGeometry extends Geometry {
	function new(?radiusTop:Float, ?radiusBottom:Float, ?height:Float, ?radiusSegments:Float, ?heightSegments:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var radiusTop : Float;
		var radiusBottom : Float;
		var height : Float;
		var radialSegments : Float;
		var heightSegments : Float;
		var openEnded : Bool;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	static var prototype : CylinderGeometry;
}