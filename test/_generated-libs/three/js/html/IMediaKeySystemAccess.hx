package js.html;
/**
	This EncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
**/
extern typedef IMediaKeySystemAccess = {
	final keySystem : String;
	function createMediaKeys():js.lib.IPromise<IMediaKeys>;
	function getConfiguration():MediaKeySystemConfiguration;
};