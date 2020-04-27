package js.html;
extern typedef AudioWorkletNodeOptions = AudioNodeOptions & { @:optional
	var numberOfInputs : Float; @:optional
	var numberOfOutputs : Float; @:optional
	var outputChannelCount : std.Array<Float>; @:optional
	var parameterData : Any; @:optional
	var processorOptions : Any; };