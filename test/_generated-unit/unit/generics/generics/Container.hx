package unit.generics.generics;

typedef Container<T> = {
	var value : T;
	function map<U>(fn:(value:T) -> U):Container<U>;
};