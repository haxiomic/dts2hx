package global.three;

@:enum @:native("THREE") extern abstract Side(Int) from Int to Int {
	var FrontSide : Side;
	var BackSide : Side;
	var DoubleSide : Side;
}