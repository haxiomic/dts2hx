package undici_types.dispatcher;

typedef UpgradeOptions = {
	var path : String;
	/**
		Default: `'GET'`
	**/
	@:optional
	var method : String;
	/**
		Default: `null`
	**/
	@:optional
	var headers : ts.AnyOf2<Array<String>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>>;
	/**
		A string of comma separated protocols, in descending preference order. Default: `'Websocket'`
	**/
	@:optional
	var protocol : String;
	/**
		Default: `null`
	**/
	@:optional
	var signal : Any;
	/**
		Default: 0
	**/
	@:optional
	var maxRedirections : Float;
	/**
		Default: false
	**/
	@:optional
	var redirectionLimitReached : Bool;
	/**
		Default: `null`
	**/
	@:optional
	var responseHeader : String;
};