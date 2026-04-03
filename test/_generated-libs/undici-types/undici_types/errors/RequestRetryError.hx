package undici_types.errors;

@:jsRequire("undici-types", "errors.RequestRetryError") extern class RequestRetryError extends UndiciError {
	function new(message:String, statusCode:Float, ?headers:ts.AnyOf2<Array<String>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>>, ?body:ts.AnyOf2<String, haxe.DynamicAccess<Dynamic>>);
	var statusCode : Float;
	var data : {
		var count : Float;
	};
	var headers : haxe.DynamicAccess<ts.AnyOf2<String, Array<String>>>;
	static var prototype : RequestRetryError;
}