package js.lib;

/**
	Context provided to a class method decorator.
**/
typedef ClassMethodDecoratorContext<This, Value:((args:haxe.extern.Rest<Any>) -> Dynamic)> = ts.AbstractAnon<js.lib.ClassMethodDecoratorContext_<This, Value>>;