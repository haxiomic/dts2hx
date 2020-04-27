package js.html;
extern interface AudioContextOptions {
	@:optional
	var latencyHint : haxe.extern.EitherType<Float, String>;
	@:optional
	var sampleRate : Float;
}