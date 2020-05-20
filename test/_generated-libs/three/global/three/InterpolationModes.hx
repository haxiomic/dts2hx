package global.three;

@:enum @:native("THREE") extern abstract InterpolationModes(Any) from Any to Any {
	var InterpolateDiscrete : InterpolationModes;
	var InterpolateLinear : InterpolationModes;
	var InterpolateSmooth : InterpolationModes;
}