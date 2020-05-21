package global.nodejs;

typedef Domain = {
	function run<T>(fn:(args:haxe.extern.Rest<Dynamic>) -> T, args:haxe.extern.Rest<Dynamic>):T;
	function add(emitter:ts.AnyOf2<EventEmitter, Timer>):Void;
	function remove(emitter:ts.AnyOf2<EventEmitter, Timer>):Void;
	function bind<T>(cb:T):T;
	function intercept<T>(cb:T):T;
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function removeListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function removeAllListeners(?event:String):Domain;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function setMaxListeners(n:Float):Domain;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};