package three;
@:jsRequire("three", "Interpolant") extern class Interpolant {
	function new(parameterPositions:Any, samplesValues:Any, sampleSize:Float, ?resultBuffer:Any);
	var parameterPositions : Any;
	var samplesValues : Any;
	var valueSize : Float;
	var resultBuffer : Any;
	function evaluate(time:Float):Any;
}