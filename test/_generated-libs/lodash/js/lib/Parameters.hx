package js.lib;

/**
	Obtain the parameters of a function type in a tuple
**/
typedef Parameters<T:((args:haxe.extern.Rest<Any>) -> Dynamic)> = Dynamic;