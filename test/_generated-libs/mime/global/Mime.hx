package global;

@:native("mime") @valueModuleOnly extern class Mime {
	static function getType(path:String):Null<String>;
	static function getExtension(mime:String):Null<String>;
	static function define(mimes:global.mime.TypeMap, ?force:Bool):Void;
}