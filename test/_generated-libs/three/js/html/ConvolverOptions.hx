package js.html;
extern typedef ConvolverOptions = AudioNodeOptions & { @:optional
	var buffer : AudioBuffer; @:optional
	var disableNormalization : Bool; };