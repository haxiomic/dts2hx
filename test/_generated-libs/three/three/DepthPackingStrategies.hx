package three;

@:enum @:jsRequire("three") extern abstract DepthPackingStrategies(Int) from Int to Int {
	final BasicDepthPacking : DepthPackingStrategies;
	final RGBADepthPacking : DepthPackingStrategies;
}