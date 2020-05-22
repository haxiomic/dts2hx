package global.three;

/**
	An object with a series of statistical information about the graphics board memory and the rendering process.
**/
@:native("THREE.WebGLInfo") extern class WebGLInfo {
	function new();
	var autoReset : Bool;
	var memory : {
		var geometries : Float;
		var textures : Float;
	};
	var programs : Null<Array<WebGLProgram>>;
	var render : {
		var calls : Float;
		var frame : Float;
		var lines : Float;
		var points : Float;
		var triangles : Float;
	};
	function reset():Void;
	static var prototype : WebGLInfo;
}