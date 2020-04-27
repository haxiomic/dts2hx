package three;
@:jsRequire("three", "LinearInterpolant") extern class LinearInterpolant extends Interpolant {
	function new(parameterPositions:Any, samplesValues:Any, sampleSize:Float, ?resultBuffer:Any);
	function interpolate_(i1:Float, t0:Float, t:Float, t1:Float):Any;
}