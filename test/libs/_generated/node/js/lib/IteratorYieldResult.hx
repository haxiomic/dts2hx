package js.lib;
extern interface IteratorYieldResult<TYield> {
	@:optional
	var done : Bool;
	var value : TYield;
}