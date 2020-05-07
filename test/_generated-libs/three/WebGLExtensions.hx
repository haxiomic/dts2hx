package three;
@:jsRequire("three", "WebGLExtensions") extern class WebGLExtensions {
	function new(gl:ts.html.WebGLRenderingContext);
	function get(name:String):Dynamic;
}