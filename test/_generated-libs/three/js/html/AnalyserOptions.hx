package js.html;
extern typedef AnalyserOptions = AudioNodeOptions & { @:optional
	var fftSize : Float; @:optional
	var maxDecibels : Float; @:optional
	var minDecibels : Float; @:optional
	var smoothingTimeConstant : Float; };