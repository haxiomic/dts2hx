package global.three;

@:native("THREE") extern abstract InterpolationEndingModes(Any) from Any to Any {
	var ZeroCurvatureEnding : InterpolationEndingModes;
	var ZeroSlopeEnding : InterpolationEndingModes;
	var WrapAroundEnding : InterpolationEndingModes;
}