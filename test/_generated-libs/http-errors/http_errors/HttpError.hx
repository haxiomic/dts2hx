package http_errors;

typedef HttpError<N:(Float)> = {
	var status : N;
	var statusCode : N;
	var expose : Bool;
	@:optional
	var headers : haxe.DynamicAccess<String>;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};