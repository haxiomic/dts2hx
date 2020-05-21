package three;

@:enum @:jsRequire("three") extern abstract InterpolationEndingModes(Int) from Int to Int {
	var ZeroCurvatureEnding : InterpolationEndingModes;
	var ZeroSlopeEnding : InterpolationEndingModes;
	var WrapAroundEnding : InterpolationEndingModes;
}