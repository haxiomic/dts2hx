package unit.types.types;
typedef Recursive<T> = {
	var recursive : Recursive<T>;
	var recursiveRecursive : Recursive<Recursive<Float>>;
	var recursiveString : Recursive<String>;
	var recursiveArray : std.Array<Recursive<T>>;
	var structureType : StructureType;
	var t : T;
};