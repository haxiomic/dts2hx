package global.three;

@:native("THREE.Font") extern class Font {
	function new(jsondata:Dynamic);
	var data : String;
	function generateShapes(text:String, size:Float, divisions:Float):Array<Dynamic>;
	static var prototype : Font;
}