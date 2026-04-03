package js.html;

typedef AudioDecoderConfig = {
	var codec : String;
	@:optional
	var description : AllowSharedBufferSource;
	var numberOfChannels : Float;
	var sampleRate : Float;
};