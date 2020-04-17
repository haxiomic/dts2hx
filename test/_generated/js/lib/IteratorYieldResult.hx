package js.lib;
extern interface IteratorYieldResult<TYield> {
	@:optional
	var done : Null<Bool>;
	var value : TYield;
}