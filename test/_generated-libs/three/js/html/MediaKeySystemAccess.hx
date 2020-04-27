package js.html;
/**
	This EncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
**/
@:native("MediaKeySystemAccess") @tsInterface extern class MediaKeySystemAccess {
	function new();
	final keySystem : String;
	function createMediaKeys():js.lib.Promise<MediaKeys>;
	function getConfiguration():MediaKeySystemConfiguration;
	static var prototype : MediaKeySystemAccess;
}