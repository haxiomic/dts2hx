package node.util;

@:jsRequire("util", "inspect") @valueModuleOnly extern class Inspect {
	@:overload(function(object:Dynamic, options:InspectOptions):String { })
	@:selfCall
	static function call(object:Dynamic, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	static var colors : { };
	static var styles : { };
	static var defaultOptions : InspectOptions;
	static final custom : js.lib.Symbol;
}