package node.domain;
@:jsRequire("domain", "Domain") extern class Domain extends node.events.EventEmitter {
	function run<T>(fn:(args:haxe.extern.Rest<Dynamic>) -> T, args:haxe.extern.Rest<Dynamic>):T;
	function add(emitter:ts.AnyOf2<node.events.EventEmitter, global.nodejs.Timer>):Void;
	function remove(emitter:ts.AnyOf2<node.events.EventEmitter, global.nodejs.Timer>):Void;
	function bind<T>(cb:T):T;
	function intercept<T>(cb:T):T;
	var members : std.Array<ts.AnyOf2<node.events.EventEmitter, global.nodejs.Timer>>;
	function enter():Void;
	function exit():Void;
}