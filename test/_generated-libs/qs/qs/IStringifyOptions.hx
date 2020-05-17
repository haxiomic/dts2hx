package qs;

typedef IStringifyOptions = {
	@:optional
	var delimiter : String;
	@:optional
	var strictNullHandling : Bool;
	@:optional
	var skipNulls : Bool;
	@:optional
	var encode : Bool;
	@:optional
	dynamic function encoder(str:Dynamic, defaultEncoder:DefaultEncoder, charset:String, type:String):String;
	@:optional
	var filter : ts.AnyOf2<Array<ts.AnyOf2<String, Float>>, (prefix:String, value:Dynamic) -> Dynamic>;
	@:optional
	var arrayFormat : String;
	@:optional
	var indices : Bool;
	@:optional
	dynamic function sort(a:Dynamic, b:Dynamic):Float;
	@:optional
	dynamic function serializeDate(d:js.lib.Date):String;
	@:optional
	var format : String;
	@:optional
	var encodeValuesOnly : Bool;
	@:optional
	var addQueryPrefix : Bool;
	@:optional
	var allowDots : Bool;
	@:optional
	var charset : String;
	@:optional
	var charsetSentinel : Bool;
};