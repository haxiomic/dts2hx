package three;
@:jsRequire("three", "WebGLUniforms") extern class WebGLUniforms {
	function new(gl:Any, program:WebGLProgram);
	function setValue(gl:Any, name:String, value:Any, textures:WebGLTextures):Void;
	function setOptional(gl:Any, object:Any, name:String):Void;
	static function upload(gl:Any, seq:Any, values:std.Array<Any>, textures:WebGLTextures):Void;
	static function seqWithValue(seq:Any, values:std.Array<Any>):std.Array<Any>;
	static function splitDynamic(seq:Any, values:std.Array<Any>):std.Array<Any>;
	static function evalDynamic(seq:Any, values:std.Array<Any>, object:Any, camera:Any):std.Array<Any>;
}