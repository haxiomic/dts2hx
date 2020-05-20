package global.three;

@:enum @:native("THREE") extern abstract Side(Any) from Any to Any {
	var FrontSide : Side;
	var BackSide : Side;
	var DoubleSide : Side;
}