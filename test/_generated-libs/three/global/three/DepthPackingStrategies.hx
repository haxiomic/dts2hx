package global.three;

@:native("THREE.DepthPackingStrategies") @:enum extern abstract DepthPackingStrategies(Any) from Any to Any {
	var BasicDepthPacking : DepthPackingStrategies;
	var RGBADepthPacking : DepthPackingStrategies;
}