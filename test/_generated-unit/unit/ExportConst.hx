package unit;

@:jsRequire("./unit/export-const") extern class ExportConst {
	static var value(get, never) : Float;
	static inline function get_value():Float return cast ExportConst;
}