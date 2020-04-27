package js.html;
extern interface ConvolverOptions extends AudioNodeOptions {
	@:optional
	var buffer : AudioBuffer;
	@:optional
	var disableNormalization : Bool;
}