package global.three;

@:native("THREE.AudioAnalyser") extern class AudioAnalyser {
	function new(audio:Dynamic, fftSize:Float);
	var analyser : Dynamic;
	var data : js.lib.Uint8Array_<js.lib.ArrayBuffer>;
	function getFrequencyData():js.lib.Uint8Array_<js.lib.ArrayBuffer>;
	function getAverageFrequency():Float;
	function getData(file:Dynamic):Dynamic;
	static var prototype : AudioAnalyser;
}