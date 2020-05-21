package global.three;

@:native("THREE.WebGLProperties") extern class WebGLProperties {
	function new();
	function get(object:Dynamic):Dynamic;
	function delete(object:Dynamic):Void;
	function clear():Void;
	static var prototype : WebGLProperties;
}