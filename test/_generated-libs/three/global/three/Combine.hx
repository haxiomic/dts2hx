package global.three;

@:native("THREE") extern abstract Combine(Any) from Any to Any {
	var MultiplyOperation : Combine;
	var MixOperation : Combine;
	var AddOperation : Combine;
}