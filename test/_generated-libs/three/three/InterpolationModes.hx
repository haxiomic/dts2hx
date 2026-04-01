package three;

@:jsRequire("three") extern enum abstract InterpolationModes(Int) from Int to Int {
	final InterpolateDiscrete : InterpolationModes;
	final InterpolateLinear : InterpolationModes;
	final InterpolateSmooth : InterpolationModes;
}