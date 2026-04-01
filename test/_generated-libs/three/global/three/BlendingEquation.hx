package global.three;

@:native("THREE") extern enum abstract BlendingEquation(Int) from Int to Int {
	final AddEquation : BlendingEquation;
	final SubtractEquation : BlendingEquation;
	final ReverseSubtractEquation : BlendingEquation;
	final MinEquation : BlendingEquation;
	final MaxEquation : BlendingEquation;
}