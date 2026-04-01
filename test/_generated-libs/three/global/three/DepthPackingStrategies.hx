package global.three;

@:native("THREE") extern enum abstract DepthPackingStrategies(Int) from Int to Int {
	final BasicDepthPacking : DepthPackingStrategies;
	final RGBADepthPacking : DepthPackingStrategies;
}