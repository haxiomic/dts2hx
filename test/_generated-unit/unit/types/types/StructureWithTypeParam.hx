package unit.types.types;

typedef StructureWithTypeParam<T> = {
	var t : T;
	@:optional
	var optionalT : T;
	var nullableT : Null<T>;
	var undefinedT : Null<T>;
};