package three;

@:jsRequire("three", "AudioAnalyser") extern class AudioAnalyser {
	function new(audio:Dynamic, fftSize:Float);
	var analyser : Dynamic;
	var data : js.lib.Uint8Array;
	function getFrequencyData():js.lib.Uint8Array;
	function getAverageFrequency():Float;
	function getData(file:Dynamic):Dynamic;
	static var prototype : AudioAnalyser;
}