package three;

@:jsRequire("three", "Cache") @valueModuleOnly extern class Cache {
	static function add(key:String, file:Dynamic):Void;
	static function get(key:String):Dynamic;
	static function remove(key:String):Void;
	static function clear():Void;
	static var enabled : Bool;
	static var files : Dynamic;
}