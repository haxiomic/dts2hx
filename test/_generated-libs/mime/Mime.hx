@:jsRequire("mime") @valueModuleOnly extern class Mime {
	static function getType(path:String):Null<String>;
	static function getExtension(mime:String):Null<String>;
	static function define(mimes:mime.TypeMap, ?force:Bool):Void;
}