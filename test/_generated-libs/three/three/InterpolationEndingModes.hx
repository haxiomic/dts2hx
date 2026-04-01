package three;

@:jsRequire("three") extern enum abstract InterpolationEndingModes(Int) from Int to Int {
	final ZeroCurvatureEnding : InterpolationEndingModes;
	final ZeroSlopeEnding : InterpolationEndingModes;
	final WrapAroundEnding : InterpolationEndingModes;
}