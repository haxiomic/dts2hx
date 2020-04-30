package ts.html;
/**
	A WaveShaperNode always has exactly one input and one output.
**/
@:native("WaveShaperNode") extern class WaveShaperNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:WaveShaperOptions);
	var curve : Null<ts.lib.IFloat32Array>;
	var oversample : String;
	static var prototype : IWaveShaperNode;
}