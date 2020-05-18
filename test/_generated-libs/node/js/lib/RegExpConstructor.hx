package js.lib;

typedef RegExpConstructor = {
	@:overload(function(pattern:String, ?flags:String):js.lib.RegExp { })
	@:overload(function(pattern:ts.AnyOf2<String, js.lib.RegExp>, ?flags:String):js.lib.RegExp { })
	@:selfCall
	function call(pattern:ts.AnyOf2<String, js.lib.RegExp>):js.lib.RegExp;
	final prototype : js.lib.RegExp;
	@:native("$1")
	var Dollar1 : String;
	@:native("$2")
	var Dollar2 : String;
	@:native("$3")
	var Dollar3 : String;
	@:native("$4")
	var Dollar4 : String;
	@:native("$5")
	var Dollar5 : String;
	@:native("$6")
	var Dollar6 : String;
	@:native("$7")
	var Dollar7 : String;
	@:native("$8")
	var Dollar8 : String;
	@:native("$9")
	var Dollar9 : String;
	var lastMatch : String;
};