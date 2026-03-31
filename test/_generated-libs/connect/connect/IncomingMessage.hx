package connect;

@:jsRequire("connect", "IncomingMessage") extern class IncomingMessage extends node.http.IncomingMessage {
	@:optional
	var originalUrl : String;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function addListener(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function on(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function once(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function prependListener(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function prependOnceListener(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function removeListener(event:String, listener:() -> Void):IncomingMessage;
	static var prototype : IncomingMessage;
}