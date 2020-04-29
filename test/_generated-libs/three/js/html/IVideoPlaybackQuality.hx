package js.html;
/**
	Returned by the HTMLVideoElement.getVideoPlaybackQuality() method and contains metrics that can be used to determine the playback quality of a video.
**/
extern typedef IVideoPlaybackQuality = {
	final corruptedVideoFrames : Float;
	final creationTime : Float;
	final droppedVideoFrames : Float;
	final totalFrameDelay : Float;
	final totalVideoFrames : Float;
};