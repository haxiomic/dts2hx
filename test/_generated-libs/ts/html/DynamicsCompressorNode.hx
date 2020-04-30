package ts.html;
/**
	Inherits properties from its parent, AudioNode.
**/
@:native("DynamicsCompressorNode") extern class DynamicsCompressorNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:DynamicsCompressorOptions);
	final attack : ts.lib.IAudioParam;
	final knee : ts.lib.IAudioParam;
	final ratio : ts.lib.IAudioParam;
	final reduction : Float;
	final release : ts.lib.IAudioParam;
	final threshold : ts.lib.IAudioParam;
	static var prototype : IDynamicsCompressorNode;
}