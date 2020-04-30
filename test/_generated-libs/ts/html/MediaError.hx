package ts.html;
/**
	An error which occurred while handling media in an HTML media element based on HTMLMediaElement, such as <audio> or <video>.
**/
@:native("MediaError") extern class MediaError {
	function new();
	final code : Float;
	final message : String;
	final msExtendedCode : Float;
	final MEDIA_ERR_ABORTED : Float;
	final MEDIA_ERR_DECODE : Float;
	final MEDIA_ERR_NETWORK : Float;
	final MEDIA_ERR_SRC_NOT_SUPPORTED : Float;
	final MS_MEDIA_ERR_ENCRYPTED : Float;
	static var prototype : IMediaError;
	@:native("MEDIA_ERR_ABORTED")
	static final MEDIA_ERR_ABORTED_ : Float;
	@:native("MEDIA_ERR_DECODE")
	static final MEDIA_ERR_DECODE_ : Float;
	@:native("MEDIA_ERR_NETWORK")
	static final MEDIA_ERR_NETWORK_ : Float;
	@:native("MEDIA_ERR_SRC_NOT_SUPPORTED")
	static final MEDIA_ERR_SRC_NOT_SUPPORTED_ : Float;
	@:native("MS_MEDIA_ERR_ENCRYPTED")
	static final MS_MEDIA_ERR_ENCRYPTED_ : Float;
}