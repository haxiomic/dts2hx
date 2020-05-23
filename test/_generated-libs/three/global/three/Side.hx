package global.three;

@:enum @:native("THREE") extern abstract Side(Int) from Int to Int {
	final FrontSide : Side;
	final BackSide : Side;
	final DoubleSide : Side;
}