package js.lib;

typedef IteratorYieldResult<TYield> = {
	@:optional
	var done : Bool;
	var value : TYield;
};