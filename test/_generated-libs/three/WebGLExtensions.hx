package three;
@:jsRequire("three", "WebGLExtensions") extern class WebGLExtensions {
	function new(gl:ts.html.IWebGLRenderingContext);
	function get(name:String):Dynamic;
}