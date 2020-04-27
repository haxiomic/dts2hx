package js.html;
extern interface TrackEventInit extends EventInit {
	@:optional
	var track : haxe.extern.EitherType<TextTrack, haxe.extern.EitherType<AudioTrack, VideoTrack>>;
}