package global.three;

@:enum @:native("THREE") extern abstract InterpolationEndingModes(Int) from Int to Int {
	var ZeroCurvatureEnding : InterpolationEndingModes;
	var ZeroSlopeEnding : InterpolationEndingModes;
	var WrapAroundEnding : InterpolationEndingModes;
}