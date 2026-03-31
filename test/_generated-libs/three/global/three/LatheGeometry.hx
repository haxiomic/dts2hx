package global.three;

@:native("THREE.LatheGeometry") extern class LatheGeometry extends Geometry {
	function new(points:Array<Vector2>, ?segments:Float, ?phiStart:Float, ?phiLength:Float);
	var parameters : {
		var points : Array<Vector2>;
		var segments : Float;
		var phiStart : Float;
		var phiLength : Float;
	};
	static var prototype : LatheGeometry;
}