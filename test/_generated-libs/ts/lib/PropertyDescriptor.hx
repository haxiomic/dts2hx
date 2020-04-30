package ts.lib;
extern typedef PropertyDescriptor = {
	@:optional
	var configurable : Bool;
	@:optional
	var enumerable : Bool;
	@:optional
	var value : Any;
	@:optional
	var writable : Bool;
	@:optional
	function get():Any;
	@:optional
	function set(v:Any):Void;
};