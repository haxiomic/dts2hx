package three;

@:jsRequire("three", "BoxBufferGeometry") extern class BoxBufferGeometry extends BufferGeometry {
	function new(?width:Float, ?height:Float, ?depth:Float, ?widthSegments:Float, ?heightSegments:Float, ?depthSegments:Float);
	var parameters : {
		var width : Float;
		var height : Float;
		var depth : Float;
		var widthSegments : Float;
		var heightSegments : Float;
		var depthSegments : Float;
	};
	function clone():BoxBufferGeometry;
	function copy(source:BufferGeometry):BoxBufferGeometry;
	static var prototype : BoxBufferGeometry;
}