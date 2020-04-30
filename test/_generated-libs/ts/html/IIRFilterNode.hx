package ts.html;
/**
	The IIRFilterNode interface of the Web Audio API is a AudioNode processor which implements a general infinite impulse response (IIR)  filter; this type of filter can be used to implement tone control devices and graphic equalizers as well. It lets the parameters of the filter response be specified, so that it can be tuned as needed.
**/
@:native("IIRFilterNode") extern class IIRFilterNode {
	function new(context:ts.lib.IBaseAudioContext, options:IIRFilterOptions);
	function getFrequencyResponse(frequencyHz:ts.lib.IFloat32Array, magResponse:ts.lib.IFloat32Array, phaseResponse:ts.lib.IFloat32Array):Void;
	static var prototype : IIIRFilterNode;
}