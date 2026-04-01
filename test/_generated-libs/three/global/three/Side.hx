package global.three;

@:native("THREE") extern enum abstract Side(Int) from Int to Int {
	final FrontSide : Side;
	final BackSide : Side;
	final DoubleSide : Side;
}