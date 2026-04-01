package three;

@:jsRequire("three") extern enum abstract DepthPackingStrategies(Int) from Int to Int {
	final BasicDepthPacking : DepthPackingStrategies;
	final RGBADepthPacking : DepthPackingStrategies;
}