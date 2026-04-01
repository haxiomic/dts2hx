package js.lib;

typedef PropertyDescriptor = {
	@:optional
	var configurable : Bool;
	@:optional
	var enumerable : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	var writable : Bool;
	@:optional
	function get():Dynamic;
	@:optional
	function set(v:Dynamic):Void;
};