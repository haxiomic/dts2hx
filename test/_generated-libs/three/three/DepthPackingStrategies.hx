package three;

@:enum @:jsRequire("three") extern abstract DepthPackingStrategies(Any) from Any to Any {
	var BasicDepthPacking : DepthPackingStrategies;
	var RGBADepthPacking : DepthPackingStrategies;
}