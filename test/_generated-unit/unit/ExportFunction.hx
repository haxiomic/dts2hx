package unit;

@:jsRequire("./unit/export-function") extern class ExportFunction {
	@:selfCall
	static function call(options:{ var a : Float; }):String;
}