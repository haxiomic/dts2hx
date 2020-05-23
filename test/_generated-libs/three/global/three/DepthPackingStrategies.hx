package global.three;

@:enum @:native("THREE") extern abstract DepthPackingStrategies(Int) from Int to Int {
	final BasicDepthPacking : DepthPackingStrategies;
	final RGBADepthPacking : DepthPackingStrategies;
}