package three;
@:jsRequire("three", "WebGLUniforms") extern class WebGLUniforms {
	function new(gl:Dynamic, program:WebGLProgram);
	function setValue(gl:Dynamic, name:String, value:Dynamic, textures:WebGLTextures):Void;
	function setOptional(gl:Dynamic, object:Dynamic, name:String):Void;
	static function upload(gl:Dynamic, seq:Dynamic, values:std.Array<Dynamic>, textures:WebGLTextures):Void;
	static function seqWithValue(seq:Dynamic, values:std.Array<Dynamic>):std.Array<Dynamic>;
	static function splitDynamic(seq:Dynamic, values:std.Array<Dynamic>):std.Array<Dynamic>;
	static function evalDynamic(seq:Dynamic, values:std.Array<Dynamic>, object:Dynamic, camera:Dynamic):std.Array<Dynamic>;
}