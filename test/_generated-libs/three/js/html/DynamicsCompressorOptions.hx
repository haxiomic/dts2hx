package js.html;
extern interface DynamicsCompressorOptions extends AudioNodeOptions {
	@:optional
	var attack : Float;
	@:optional
	var knee : Float;
	@:optional
	var ratio : Float;
	@:optional
	var release : Float;
	@:optional
	var threshold : Float;
}