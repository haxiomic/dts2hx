package global.three;

@:native("THREE") extern abstract DepthPackingStrategies(Any) from Any to Any {
	var BasicDepthPacking : DepthPackingStrategies;
	var RGBADepthPacking : DepthPackingStrategies;
}