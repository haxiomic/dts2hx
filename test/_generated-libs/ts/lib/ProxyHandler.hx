package ts.lib;
extern typedef ProxyHandler<T> = {
	@:optional
	function getPrototypeOf(target:T):Null<Dynamic>;
	@:optional
	function setPrototypeOf(target:T, v:Dynamic):Bool;
	@:optional
	function isExtensible(target:T):Bool;
	@:optional
	function preventExtensions(target:T):Bool;
	@:optional
	function getOwnPropertyDescriptor(target:T, p:ts.AnyOf3<String, Float, js.lib.Symbol>):Null<PropertyDescriptor>;
	@:optional
	function has(target:T, p:ts.AnyOf3<String, Float, js.lib.Symbol>):Bool;
	@:optional
	function get(target:T, p:ts.AnyOf3<String, Float, js.lib.Symbol>, receiver:Dynamic):Dynamic;
	@:optional
	function set(target:T, p:ts.AnyOf3<String, Float, js.lib.Symbol>, value:Dynamic, receiver:Dynamic):Bool;
	@:optional
	function deleteProperty(target:T, p:ts.AnyOf3<String, Float, js.lib.Symbol>):Bool;
	@:optional
	function defineProperty(target:T, p:ts.AnyOf3<String, Float, js.lib.Symbol>, attributes:PropertyDescriptor):Bool;
	@:optional
	function enumerate(target:T):std.Array<ts.AnyOf3<String, Float, js.lib.Symbol>>;
	@:optional
	function ownKeys(target:T):std.Array<ts.AnyOf3<String, Float, js.lib.Symbol>>;
	@:optional
	function apply(target:T, thisArg:Dynamic, ?argArray:Dynamic):Dynamic;
	@:optional
	function construct(target:T, argArray:Dynamic, ?newTarget:Dynamic):Dynamic;
};