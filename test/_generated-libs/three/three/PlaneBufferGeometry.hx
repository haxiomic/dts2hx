package three;

@:jsRequire("three", "PlaneBufferGeometry") extern class PlaneBufferGeometry extends BufferGeometry {
	function new(?width:Float, ?height:Float, ?widthSegments:Float, ?heightSegments:Float);
	var parameters : {
		var width : Float;
		var height : Float;
		var widthSegments : Float;
		var heightSegments : Float;
	};
	function clone():PlaneBufferGeometry;
	function copy(source:BufferGeometry):PlaneBufferGeometry;
	static var prototype : PlaneBufferGeometry;
}