package ts.html;
/**
	An AudioNode that performs a Linear Convolution on a given AudioBuffer, often used to achieve a reverb effect. A ConvolverNode always has exactly one input and one output.
**/
@:native("ConvolverNode") extern class ConvolverNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:ConvolverOptions);
	var buffer : Null<IAudioBuffer>;
	var normalize : Bool;
	static var prototype : IConvolverNode;
}