package ts.html;
/**
	This EncryptedMediaExtensions API interface contains the content and related data when the content decryption module generates a message for the session.
**/
@:native("MediaKeyMessageEvent") extern class MediaKeyMessageEvent {
	function new(type:String, eventInitDict:MediaKeyMessageEventInit);
	final message : ts.lib.IArrayBuffer;
	final messageType : String;
	static var prototype : IMediaKeyMessageEvent;
}