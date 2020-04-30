package ts.html;
extern typedef AudioContextOptions = {
	@:optional
	var latencyHint : haxe.extern.EitherType<Float, String>;
	@:optional
	var sampleRate : Float;
};