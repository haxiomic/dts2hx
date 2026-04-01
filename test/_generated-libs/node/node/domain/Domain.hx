package node.domain;

@:jsRequire("domain", "Domain") extern class Domain extends node.events.EventEmitter {
	function run<T>(fn:(args:haxe.extern.Rest<Dynamic>) -> T, args:haxe.extern.Rest<Dynamic>):T;
	function add(emitter:ts.AnyOf2<global.nodejs.Timer, node.events.EventEmitter>):Void;
	function remove(emitter:ts.AnyOf2<global.nodejs.Timer, node.events.EventEmitter>):Void;
	function bind<T:(haxe.Constraints.Function)>(cb:T):T;
	function intercept<T:(haxe.Constraints.Function)>(cb:T):T;
	var members : Array<ts.AnyOf2<global.nodejs.Timer, node.events.EventEmitter>>;
	function enter():Void;
	function exit():Void;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Domain;
	function setMaxListeners(n:Float):Domain;
	static var prototype : Domain;
}