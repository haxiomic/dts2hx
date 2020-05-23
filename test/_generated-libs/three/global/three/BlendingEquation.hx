package global.three;

@:enum @:native("THREE") extern abstract BlendingEquation(Int) from Int to Int {
	final AddEquation : BlendingEquation;
	final SubtractEquation : BlendingEquation;
	final ReverseSubtractEquation : BlendingEquation;
	final MinEquation : BlendingEquation;
	final MaxEquation : BlendingEquation;
}