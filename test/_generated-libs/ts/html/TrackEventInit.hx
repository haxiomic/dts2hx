package ts.html;
extern typedef TrackEventInit = {
	@:optional
	var track : ts.AnyOf3<IAudioTrack, ITextTrack, IVideoTrack>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};