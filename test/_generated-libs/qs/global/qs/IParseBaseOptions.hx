package global.qs;

typedef IParseBaseOptions = {
	@:optional
	var comma : Bool;
	@:optional
	var delimiter : ts.AnyOf2<String, js.lib.RegExp>;
	@:optional
	var depth : ts.AnyOf2<Float, Bool>;
	@:optional
	dynamic function decoder(str:String, defaultDecoder:DefaultDecoder, charset:String, type:String):Dynamic;
	@:optional
	var arrayLimit : Float;
	@:optional
	var parseArrays : Bool;
	@:optional
	var plainObjects : Bool;
	@:optional
	var allowPrototypes : Bool;
	@:optional
	var allowSparse : Bool;
	@:optional
	var parameterLimit : Float;
	@:optional
	var strictNullHandling : Bool;
	@:optional
	var ignoreQueryPrefix : Bool;
	@:optional
	var charset : String;
	@:optional
	var charsetSentinel : Bool;
	@:optional
	var interpretNumericEntities : Bool;
	@:optional
	var allowEmptyArrays : Bool;
	@:optional
	var duplicates : String;
	@:optional
	var strictDepth : Bool;
	@:optional
	var strictMerge : Bool;
	@:optional
	var throwOnLimitExceeded : Bool;
};