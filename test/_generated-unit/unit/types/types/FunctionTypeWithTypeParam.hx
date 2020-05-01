package unit.types.types;
/**
	haxe doesn't support function-types with type parameters
	this should translate to: 
	typedef FunctionTypeWithTypeParam<T> = (a: T, b: Any) -> Any;
**/
typedef FunctionTypeWithTypeParam<T> = {
	@:selfCall
	function call<K>(a:T, b:K):K;
};