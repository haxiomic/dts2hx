package three;
@:jsRequire("three", "Font") extern class Font {
	function new(jsondata:Any);
	var data : String;
	function generateShapes(text:String, size:Float, divisions:Float):std.Array<Any>;
}