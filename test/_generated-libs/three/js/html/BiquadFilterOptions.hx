package js.html;
extern interface BiquadFilterOptions extends AudioNodeOptions {
	@:optional
	var Q : Float;
	@:optional
	var detune : Float;
	@:optional
	var frequency : Float;
	@:optional
	var gain : Float;
	@:optional
	var type : String;
}