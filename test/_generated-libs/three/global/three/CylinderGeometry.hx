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
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):CylinderGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():CylinderGeometry;
	function copy(source:Geometry):CylinderGeometry;
	static var prototype : CylinderGeometry;
}