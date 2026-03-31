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
	static var prototype : Domain;
}