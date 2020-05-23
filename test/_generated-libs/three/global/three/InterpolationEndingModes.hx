package global.three;

@:enum @:native("THREE") extern abstract InterpolationEndingModes(Int) from Int to Int {
	final ZeroCurvatureEnding : InterpolationEndingModes;
	final ZeroSlopeEnding : InterpolationEndingModes;
	final WrapAroundEnding : InterpolationEndingModes;
}