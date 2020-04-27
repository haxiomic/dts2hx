package three;
@:jsRequire("three", "WebGLExtensions") extern class WebGLExtensions {
	function new(gl:js.html.WebGLRenderingContext);
	function get(name:String):Any;
}