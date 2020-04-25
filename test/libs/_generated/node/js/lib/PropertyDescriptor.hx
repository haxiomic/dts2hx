package js.lib;
extern interface PropertyDescriptor {
	@:optional
	var configurable : Null<Bool>;
	@:optional
	var enumerable : Null<Bool>;
	@:optional
	var value : Any;
	@:optional
	var writable : Null<Bool>;
	@:optional
	function get():Any;
	@:optional
	function set(v:Any):Void;
}