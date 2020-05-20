package global.three;

@:native("THREE") extern abstract InterpolationModes(Any) from Any to Any {
	var InterpolateDiscrete : InterpolationModes;
	var InterpolateLinear : InterpolationModes;
	var InterpolateSmooth : InterpolationModes;
}