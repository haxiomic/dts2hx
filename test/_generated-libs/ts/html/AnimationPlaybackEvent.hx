package ts.html;
@:native("AnimationPlaybackEvent") extern class AnimationPlaybackEvent {
	function new(type:String, ?eventInitDict:AnimationPlaybackEventInit);
	final currentTime : Null<Float>;
	final timelineTime : Null<Float>;
	static var prototype : IAnimationPlaybackEvent;
}