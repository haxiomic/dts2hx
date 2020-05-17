package unit.types.types;

typedef Recursive<T> = {
	var recursive : Recursive<T>;
	var recursiveRecursive : Recursive<Recursive<T>>;
	var recursiveString : Recursive<String>;
	var recursiveArray : Array<Recursive<T>>;
	var structureType : StructureType;
	var t : T;
};