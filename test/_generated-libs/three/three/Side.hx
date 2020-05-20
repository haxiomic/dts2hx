package three;

@:jsRequire("three", "Side") @:enum extern abstract Side(Any) from Any to Any {
	var FrontSide : Side;
	var BackSide : Side;
	var DoubleSide : Side;
}