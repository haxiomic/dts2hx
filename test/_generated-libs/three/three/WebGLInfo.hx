package three;
/**
	An object with a series of statistical information about the graphics board memory and the rendering process.
**/
@:jsRequire("three", "WebGLInfo") extern class WebGLInfo {
	var autoReset : Bool;
	var memory : {
		var geometries : Float;
		var textures : Float;
	};
	var programs : Null<std.Array<WebGLProgram>>;
	var render : {
		var calls : Float;
		var frame : Float;
		var lines : Float;
		var points : Float;
		var triangles : Float;
	};
	function reset():Void;
}