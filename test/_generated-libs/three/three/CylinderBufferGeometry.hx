package three;

@:jsRequire("three", "CylinderBufferGeometry") extern class CylinderBufferGeometry extends BufferGeometry {
	function new(?radiusTop:Float, ?radiusBottom:Float, ?height:Float, ?radialSegments:Float, ?heightSegments:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
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
	function clone():CylinderBufferGeometry;
	function copy(source:BufferGeometry):CylinderBufferGeometry;
	static var prototype : CylinderBufferGeometry;
}