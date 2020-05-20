package global.three;

@:enum @:native("THREE") extern abstract Combine(Any) from Any to Any {
	var MultiplyOperation : Combine;
	var MixOperation : Combine;
	var AddOperation : Combine;
}