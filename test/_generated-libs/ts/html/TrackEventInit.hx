package ts.html;
extern typedef TrackEventInit = {
	@:optional
	var track : haxe.extern.EitherType<ITextTrack, haxe.extern.EitherType<IAudioTrack, IVideoTrack>>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};