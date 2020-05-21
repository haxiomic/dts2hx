package three;

@:enum @:jsRequire("three") extern abstract InterpolationModes(Int) from Int to Int {
	var InterpolateDiscrete : InterpolationModes;
	var InterpolateLinear : InterpolationModes;
	var InterpolateSmooth : InterpolationModes;
}