package three;

@:jsRequire("three", "Combine") @:enum extern abstract Combine(Any) from Any to Any {
	var MultiplyOperation : Combine;
	var MixOperation : Combine;
	var AddOperation : Combine;
}