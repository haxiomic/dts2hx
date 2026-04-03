package js.html;

typedef EncodedVideoChunkInit = {
	var data : AllowSharedBufferSource;
	@:optional
	var duration : Float;
	var timestamp : Float;
	var type : EncodedVideoChunkType;
};