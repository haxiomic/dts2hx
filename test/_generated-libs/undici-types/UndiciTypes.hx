@:jsRequire("undici-types") @valueModuleOnly extern class UndiciTypes {
	static function buildConnector(?options:undici_types.buildconnector.BuildOptions):undici_types.buildconnector.Connector;
	/**
		Performs an HTTP request.
	**/
	static function request(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, ?options:Dynamic):js.lib.Promise<undici_types.dispatcher.ResponseData>;
	/**
		A faster version of `request`.
	**/
	static function stream(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, options:Dynamic, factory:undici_types.dispatcher.StreamFactory):js.lib.Promise<undici_types.dispatcher.StreamData>;
	/**
		For easy use with `stream.pipeline`.
	**/
	static function pipeline(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, options:Dynamic, handler:undici_types.dispatcher.PipelineHandler):node.stream.stream.Duplex;
	/**
		Starts two-way communications with the requested resource.
	**/
	static function connect(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, ?options:Dynamic):js.lib.Promise<undici_types.dispatcher.ConnectData>;
	/**
		Upgrade to a different protocol.
	**/
	static function upgrade(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, ?options:Dynamic):js.lib.Promise<undici_types.dispatcher.UpgradeData>;
	static function setGlobalDispatcher<DispatcherImplementation:(undici_types.Dispatcher)>(dispatcher:DispatcherImplementation):Void;
	static function getGlobalDispatcher():undici_types.Dispatcher;
	static function setGlobalOrigin(origin:Null<ts.AnyOf2<String, js.html.URL>>):Void;
	static function getGlobalOrigin():Null<js.html.URL>;
	static function deleteCookie(headers:undici_types.Headers, name:String, ?attributes:{ @:optional var name : String; @:optional var domain : String; }):Void;
	static function getCookies(headers:undici_types.Headers):haxe.DynamicAccess<String>;
	static function getSetCookies(headers:undici_types.Headers):Array<undici_types.Cookie>;
	static function setCookie(headers:undici_types.Headers, cookie:undici_types.Cookie):Void;
	static function fetch(input:undici_types.RequestInfo, ?init:undici_types.RequestInit):js.lib.Promise<undici_types.Response>;
	/**
		Parse a string to a
		{@link
		MIMEType
		}
		object. Returns `failure` if the string
		couldn't be parsed.
	**/
	static function parseMIMEType(input:String):ts.AnyOf2<undici_types.MIMEType, String>;
	/**
		Convert a MIMEType object to a string.
	**/
	static function serializeAMimeType(mimeType:undici_types.MIMEType):String;
	static final caches : undici_types.CacheStorage;
}