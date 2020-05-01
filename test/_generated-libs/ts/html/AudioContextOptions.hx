package ts.html;
extern typedef AudioContextOptions = {
	@:optional
	var latencyHint : ts.AnyOf2<Float, String>;
	@:optional
	var sampleRate : Float;
};