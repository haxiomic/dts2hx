package ts.html;
/**
	An error which occurred while handling media in an HTML media element based on HTMLMediaElement, such as <audio> or <video>.
**/
extern typedef IMediaError = {
	final code : Float;
	final message : String;
	final msExtendedCode : Float;
	final MEDIA_ERR_ABORTED : Float;
	final MEDIA_ERR_DECODE : Float;
	final MEDIA_ERR_NETWORK : Float;
	final MEDIA_ERR_SRC_NOT_SUPPORTED : Float;
	final MS_MEDIA_ERR_ENCRYPTED : Float;
};