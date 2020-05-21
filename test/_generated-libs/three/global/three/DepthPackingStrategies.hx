package global.three;

@:enum @:native("THREE") extern abstract DepthPackingStrategies(Int) from Int to Int {
	var BasicDepthPacking : DepthPackingStrategies;
	var RGBADepthPacking : DepthPackingStrategies;
}