package three;

@:enum @:jsRequire("three") extern abstract InterpolationEndingModes(Any) from Any to Any {
	var ZeroCurvatureEnding : InterpolationEndingModes;
	var ZeroSlopeEnding : InterpolationEndingModes;
	var WrapAroundEnding : InterpolationEndingModes;
}