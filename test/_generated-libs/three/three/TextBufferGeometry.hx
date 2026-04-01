package three;

@:jsRequire("three", "TextBufferGeometry") extern class TextBufferGeometry extends ExtrudeBufferGeometry {
	function new(text:String, ?parameters:TextGeometryParameters);
	var parameters : {
		var font : Font;
		var size : Float;
		var height : Float;
		var curveSegments : Float;
		var bevelEnabled : Bool;
		var bevelThickness : Float;
		var bevelSize : Float;
		var bevelOffset : Float;
		var bevelSegments : Float;
	};
	function clone():TextBufferGeometry;
	function copy(source:BufferGeometry):TextBufferGeometry;
	static var prototype : TextBufferGeometry;
}