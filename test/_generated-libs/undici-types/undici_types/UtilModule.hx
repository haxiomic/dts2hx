package undici_types;

@:jsRequire("undici-types", "util") @valueModuleOnly extern class UtilModule {
	/**
		Retrieves a header name and returns its lowercase value.
	**/
	static function headerNameToString(value:ts.AnyOf2<String, global.Buffer<js.lib.ArrayBufferLike>>):String;
	/**
		Receives a header object and returns the parsed value.
	**/
	static function parseHeaders(headers:Array<ts.AnyOf3<String, global.Buffer<js.lib.ArrayBufferLike>, Array<ts.AnyOf2<String, global.Buffer<js.lib.ArrayBufferLike>>>>>, ?obj:haxe.DynamicAccess<ts.AnyOf2<String, Array<String>>>):haxe.DynamicAccess<ts.AnyOf2<String, Array<String>>>;
}