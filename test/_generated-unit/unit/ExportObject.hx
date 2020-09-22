package unit;

@:jsRequire("./unit/export-object") extern class ExportObject {
	static var value(get, never) : {
		var field : String;
	};
	static inline function get_value():{
		var field : String;
	} return cast ExportObject;
}