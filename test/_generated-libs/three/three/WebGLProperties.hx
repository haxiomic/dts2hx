package three;

@:jsRequire("three", "WebGLProperties") extern class WebGLProperties {
	function new();
	function get(object:Dynamic):Dynamic;
	function delete(object:Dynamic):Void;
	function clear():Void;
	static var prototype : WebGLProperties;
}