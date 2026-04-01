package global.three;

@:native("THREE") extern enum abstract InterpolationEndingModes(Int) from Int to Int {
	final ZeroCurvatureEnding : InterpolationEndingModes;
	final ZeroSlopeEnding : InterpolationEndingModes;
	final WrapAroundEnding : InterpolationEndingModes;
}