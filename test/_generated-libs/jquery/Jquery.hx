@:jsRequire("jquery") extern class Jquery {
	static var value(get, never) : global.JQueryStatic;
	static inline function get_value():global.JQueryStatic return cast Jquery;
}