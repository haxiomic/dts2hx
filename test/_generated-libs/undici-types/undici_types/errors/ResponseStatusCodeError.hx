package undici_types.errors;

@:jsRequire("undici-types", "errors.ResponseStatusCodeError") extern class ResponseStatusCodeError extends UndiciError {
	function new(?message:String, ?statusCode:Float, ?headers:ts.AnyOf2<Array<String>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>>, ?body:ts.AnyOf2<String, haxe.DynamicAccess<Dynamic>>);
	var body : Null<ts.AnyOf2<String, haxe.DynamicAccess<Dynamic>>>;
	var status : Float;
	var statusCode : Float;
	var headers : Null<ts.AnyOf2<Array<String>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>>>;
	static var prototype : ResponseStatusCodeError;
}