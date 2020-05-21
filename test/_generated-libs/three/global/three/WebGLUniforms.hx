package global.three;

@:native("THREE.WebGLUniforms") extern class WebGLUniforms {
	function new(gl:Dynamic, program:WebGLProgram);
	function setValue(gl:Dynamic, name:String, value:Dynamic, textures:WebGLTextures):Void;
	function setOptional(gl:Dynamic, object:Dynamic, name:String):Void;
	static var prototype : WebGLUniforms;
	static function upload(gl:Dynamic, seq:Dynamic, values:Array<Dynamic>, textures:WebGLTextures):Void;
	static function seqWithValue(seq:Dynamic, values:Array<Dynamic>):Array<Dynamic>;
	static function splitDynamic(seq:Dynamic, values:Array<Dynamic>):Array<Dynamic>;
	static function evalDynamic(seq:Dynamic, values:Array<Dynamic>, object:Dynamic, camera:Dynamic):Array<Dynamic>;
}