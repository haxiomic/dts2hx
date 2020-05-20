package three;

@:jsRequire("three") extern abstract InterpolationModes(Any) from Any to Any {
	var InterpolateDiscrete : InterpolationModes;
	var InterpolateLinear : InterpolationModes;
	var InterpolateSmooth : InterpolationModes;
}