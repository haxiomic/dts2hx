package js.html;
extern typedef OscillatorOptions = AudioNodeOptions & { @:optional
	var detune : Float; @:optional
	var frequency : Float; @:optional
	var periodicWave : PeriodicWave; @:optional
	var type : String; };