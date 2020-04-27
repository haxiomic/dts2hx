package js.html;
extern typedef TrackEventInit = EventInit & { @:optional
	var track : haxe.extern.EitherType<TextTrack, haxe.extern.EitherType<AudioTrack, VideoTrack>>; };