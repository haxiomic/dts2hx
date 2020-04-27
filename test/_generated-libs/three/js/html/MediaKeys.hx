package js.html;
/**
	This EncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
**/
@:native("MediaKeys") @tsInterface extern class MediaKeys {
	function new();
	function createSession(?sessionType:String):MediaKeySession;
	function setServerCertificate(serverCertificate:haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>):js.lib.Promise<Bool>;
	static var prototype : MediaKeys;
}