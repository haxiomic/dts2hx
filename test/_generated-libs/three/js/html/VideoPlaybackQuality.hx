package js.html;
/**
	Returned by the HTMLVideoElement.getVideoPlaybackQuality() method and contains metrics that can be used to determine the playback quality of a video.
**/
@:native("VideoPlaybackQuality") extern class VideoPlaybackQuality {
	function new();
	final corruptedVideoFrames : Float;
	final creationTime : Float;
	final droppedVideoFrames : Float;
	final totalFrameDelay : Float;
	final totalVideoFrames : Float;
	static var prototype : IVideoPlaybackQuality;
}