package three;

@:jsRequire("three", "DepthPackingStrategies") @:enum extern abstract DepthPackingStrategies(Any) from Any to Any {
	var BasicDepthPacking : DepthPackingStrategies;
	var RGBADepthPacking : DepthPackingStrategies;
}