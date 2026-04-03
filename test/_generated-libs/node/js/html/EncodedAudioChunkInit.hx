package js.html;

typedef EncodedAudioChunkInit = {
	var data : AllowSharedBufferSource;
	@:optional
	var duration : Float;
	var timestamp : Float;
	@:optional
	var transfer : Array<js.lib.ArrayBuffer>;
	var type : EncodedAudioChunkType;
};