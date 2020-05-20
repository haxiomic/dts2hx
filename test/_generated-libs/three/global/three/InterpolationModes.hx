package global.three;

@:native("THREE.InterpolationModes") @:enum extern abstract InterpolationModes(Any) from Any to Any {
	var InterpolateDiscrete : InterpolationModes;
	var InterpolateLinear : InterpolationModes;
	var InterpolateSmooth : InterpolationModes;
}