package three;

@:enum @:jsRequire("three") extern abstract Side(Int) from Int to Int {
	final FrontSide : Side;
	final BackSide : Side;
	final DoubleSide : Side;
}