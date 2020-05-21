package three;

@:jsRequire("three", "LatheBufferGeometry") extern class LatheBufferGeometry extends BufferGeometry {
	function new(points:Array<Vector2>, ?segments:Float, ?phiStart:Float, ?phiLength:Float);
	var parameters : {
		var points : Array<Vector2>;
		var segments : Float;
		var phiStart : Float;
		var phiLength : Float;
	};
	function clone():LatheBufferGeometry;
	function copy(source:BufferGeometry):LatheBufferGeometry;
	static var prototype : LatheBufferGeometry;
}