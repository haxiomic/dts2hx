package three;

@:jsRequire("three", "InterpolationEndingModes") @:enum extern abstract InterpolationEndingModes(Any) from Any to Any {
	var ZeroCurvatureEnding : InterpolationEndingModes;
	var ZeroSlopeEnding : InterpolationEndingModes;
	var WrapAroundEnding : InterpolationEndingModes;
}