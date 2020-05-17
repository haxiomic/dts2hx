package unit.class_;

typedef ICallableClass<T, J> = {
	@:selfCall
	function call<A, B>(arg:A, b:B):Dynamic;
	var interfaceField : J;
	var field : Float;
	var t : T;
};