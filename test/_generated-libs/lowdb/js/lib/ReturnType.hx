package js.lib;

/**
	Obtain the return type of a function type
**/
typedef ReturnType<T:((args:haxe.extern.Rest<Any>) -> Dynamic)> = Dynamic;