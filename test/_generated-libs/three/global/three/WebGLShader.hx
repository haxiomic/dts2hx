package global.three;

@:native("THREE.WebGLShader") extern class WebGLShader {
	function new(gl:Dynamic, type:String, string:String);
	static var prototype : WebGLShader;
}