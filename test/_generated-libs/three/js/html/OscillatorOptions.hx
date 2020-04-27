package js.html;
extern interface OscillatorOptions extends AudioNodeOptions {
	@:optional
	var detune : Float;
	@:optional
	var frequency : Float;
	@:optional
	var periodicWave : PeriodicWave;
	@:optional
	var type : String;
}