package global.three;

@:enum @:native("THREE") extern abstract Combine(Int) from Int to Int {
	var MultiplyOperation : Combine;
	var MixOperation : Combine;
	var AddOperation : Combine;
}