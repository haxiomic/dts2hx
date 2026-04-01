package unit.generics.generics;

@:jsRequire("./unit/generics", "Generics.GenericClass") extern class GenericClass<T> {
	function new(value:T);
	var value : T;
	function getValue():T;
	function setValue(value:T):Void;
	function transform<U>(fn:(value:T) -> U):GenericClass<U>;
	static var prototype : GenericClass<Dynamic>;
}