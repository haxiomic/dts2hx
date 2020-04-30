package ts.lib;
extern typedef ProxyHandler<T> = {
	@:optional
	function getPrototypeOf(target:T):Null<Any>;
	@:optional
	function setPrototypeOf(target:T, v:Any):Bool;
	@:optional
	function isExtensible(target:T):Bool;
	@:optional
	function preventExtensions(target:T):Bool;
	@:optional
	function getOwnPropertyDescriptor(target:T, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>):Null<PropertyDescriptor>;
	@:optional
	function has(target:T, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>):Bool;
	@:optional
	function get(target:T, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>, receiver:Any):Any;
	@:optional
	function set(target:T, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>, value:Any, receiver:Any):Bool;
	@:optional
	function deleteProperty(target:T, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>):Bool;
	@:optional
	function defineProperty(target:T, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>, attributes:PropertyDescriptor):Bool;
	@:optional
	function enumerate(target:T):std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>>;
	@:optional
	function ownKeys(target:T):std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>>;
	@:optional
	function apply(target:T, thisArg:Any, ?argArray:Any):Any;
	@:optional
	function construct(target:T, argArray:Any, ?newTarget:Any):Any;
};