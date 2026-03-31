package node.stream;

@:jsRequire("stream", "Transform") extern class Transform extends Duplex {
	function new(?opts:TransformOptions);
	function _transform(chunk:Dynamic, encoding:String, callback:TransformCallback):Void;
	function _flush(callback:TransformCallback):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function addListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function on(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function once(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function prependListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function prependOnceListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function removeListener(event:String, listener:() -> Void):Transform;
	static var prototype : Transform;
}