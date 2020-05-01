package ts.lib;
extern typedef RegExpConstructor = {
	@:overload(function(pattern:String, ?flags:String):IRegExp { })
	@:overload(function(pattern:ts.AnyOf2<String, IRegExp>, ?flags:String):IRegExp { })
	@:selfCall
	function call(pattern:ts.AnyOf2<String, IRegExp>):IRegExp;
	final prototype : IRegExp;
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