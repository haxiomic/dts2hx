package ts.html;
extern typedef TrackEventInit = {
	@:optional
	var track : haxe.extern.EitherType<IAudioTrack, haxe.extern.EitherType<ITextTrack, IVideoTrack>>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};