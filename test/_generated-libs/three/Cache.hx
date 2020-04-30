package three;
@:jsRequire("three", "Cache") @valueModuleOnly extern class Cache {
	static function add(key:String, file:Any):Void;
	static function get(key:String):Any;
	static function remove(key:String):Void;
	static function clear():Void;
	static var enabled : Bool;
	static var files : Any;
}