package three;

@:enum @:jsRequire("three") extern abstract BlendingEquation(Int) from Int to Int {
	final AddEquation : BlendingEquation;
	final SubtractEquation : BlendingEquation;
	final ReverseSubtractEquation : BlendingEquation;
	final MinEquation : BlendingEquation;
	final MaxEquation : BlendingEquation;
}