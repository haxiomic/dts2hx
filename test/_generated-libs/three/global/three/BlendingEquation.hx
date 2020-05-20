package global.three;

@:native("THREE") extern abstract BlendingEquation(Any) from Any to Any {
	var AddEquation : BlendingEquation;
	var SubtractEquation : BlendingEquation;
	var ReverseSubtractEquation : BlendingEquation;
	var MinEquation : BlendingEquation;
	var MaxEquation : BlendingEquation;
}