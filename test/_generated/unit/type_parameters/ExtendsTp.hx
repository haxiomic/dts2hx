package unit.type_parameters;
@:jsRequire("./unit/type-parameters", "ExtendsTp") extern class ExtendsTp<X, T:(BasicTp<X, T>)> {
	var field : T;
}