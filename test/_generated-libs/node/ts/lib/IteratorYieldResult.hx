package ts.lib;

typedef IteratorYieldResult<TYield> = {
	@:optional
	var done : Bool;
	var value : TYield;
};