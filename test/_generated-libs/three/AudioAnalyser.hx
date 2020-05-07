package three;
@:jsRequire("three", "AudioAnalyser") extern class AudioAnalyser {
	function new(audio:Dynamic, fftSize:Float);
	var analyser : Dynamic;
	var data : ts.lib.Uint8Array;
	function getFrequencyData():ts.lib.Uint8Array;
	function getAverageFrequency():Float;
	function getData(file:Dynamic):Dynamic;
}