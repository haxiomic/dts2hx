package js.lib;
/**
	Automatically generated tuple type implementation
	Generated by dts2hx v0.0.6
**/
@:forward @:forwardStatics extern abstract Tuple3<T0, T1, T2>(std.Array<Any>) from std.Array<Any> to std.Array<Any> {
	public var element0(get, set) : T0;
	inline function get_element0():T0 return cast this[0];
	inline function set_element0(v:T0):T0 return cast this[0] = cast v;
	public var element1(get, set) : T1;
	inline function get_element1():T1 return cast this[1];
	inline function set_element1(v:T1):T1 return cast this[1] = cast v;
	public var element2(get, set) : T2;
	inline function get_element2():T2 return cast this[2];
	inline function set_element2(v:T2):T2 return cast this[2] = cast v;
	public inline function new(element0:T0, element1:T1, element2:T2) {
		set_element0(element0);
		set_element1(element1);
		set_element2(element2);
	}
}