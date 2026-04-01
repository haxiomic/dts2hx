package three;

@:jsRequire("three") extern enum abstract Combine(Int) from Int to Int {
	final MultiplyOperation : Combine;
	final MixOperation : Combine;
	final AddOperation : Combine;
}