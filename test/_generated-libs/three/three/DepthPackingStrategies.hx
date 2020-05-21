package three;

@:enum @:jsRequire("three") extern abstract DepthPackingStrategies(Int) from Int to Int {
	var BasicDepthPacking : DepthPackingStrategies;
	var RGBADepthPacking : DepthPackingStrategies;
}