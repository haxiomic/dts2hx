package three;

@:jsRequire("three", "LinearInterpolant") extern class LinearInterpolant extends Interpolant {
	function new(parameterPositions:Dynamic, samplesValues:Dynamic, sampleSize:Float, ?resultBuffer:Dynamic);
	function interpolate_(i1:Float, t0:Float, t:Float, t1:Float):Dynamic;
	static var prototype : LinearInterpolant;
}