package unit;

@:jsRequire("./unit/export-array") extern class ExportArray {
	static var value(get, never) : Array<String>;
	static inline function get_value():Array<String> return cast ExportArray;
}