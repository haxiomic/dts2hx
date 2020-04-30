package ts.html;
/**
	The pan property takes a unitless value between -1 (full left pan) and 1 (full right pan). This interface was introduced as a much simpler way to apply a simple panning effect than having to use a full PannerNode.
**/
@:native("StereoPannerNode") extern class StereoPannerNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:StereoPannerOptions);
	final pan : ts.lib.IAudioParam;
	static var prototype : IStereoPannerNode;
}