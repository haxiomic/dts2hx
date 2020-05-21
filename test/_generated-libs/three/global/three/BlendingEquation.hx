package global.three;

@:enum @:native("THREE") extern abstract BlendingEquation(Int) from Int to Int {
	var AddEquation : BlendingEquation;
	var SubtractEquation : BlendingEquation;
	var ReverseSubtractEquation : BlendingEquation;
	var MinEquation : BlendingEquation;
	var MaxEquation : BlendingEquation;
}