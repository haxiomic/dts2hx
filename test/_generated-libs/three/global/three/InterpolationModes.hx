package global.three;

@:enum @:native("THREE") extern abstract InterpolationModes(Int) from Int to Int {
	var InterpolateDiscrete : InterpolationModes;
	var InterpolateLinear : InterpolationModes;
	var InterpolateSmooth : InterpolationModes;
}