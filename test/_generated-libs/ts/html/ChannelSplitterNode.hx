package ts.html;
/**
	The ChannelSplitterNode interface, often used in conjunction with its opposite, ChannelMergerNode, separates the different channels of an audio source into a set of mono outputs. This is useful for accessing each channel separately, e.g. for performing channel mixing where gain must be separately controlled on each channel.
**/
@:native("ChannelSplitterNode") extern class ChannelSplitterNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:ChannelSplitterOptions);
	static var prototype : IChannelSplitterNode;
}