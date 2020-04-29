package three;
@:jsRequire("three", "WebGLExtensions") extern class WebGLExtensions {
	function new(gl:js.html.IWebGLRenderingContext);
	function get(name:String):Any;
}