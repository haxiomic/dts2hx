package three;

@:enum @:jsRequire("three") extern abstract Combine(Int) from Int to Int {
	final MultiplyOperation : Combine;
	final MixOperation : Combine;
	final AddOperation : Combine;
}