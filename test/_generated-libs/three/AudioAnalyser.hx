package three;
@:jsRequire("three", "AudioAnalyser") extern class AudioAnalyser {
	function new(audio:Dynamic, fftSize:Float);
	var analyser : Dynamic;
	var data : ts.lib.IUint8Array;
	function getFrequencyData():ts.lib.IUint8Array;
	function getAverageFrequency():Float;
	function getData(file:Dynamic):Dynamic;
}