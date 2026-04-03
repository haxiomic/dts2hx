package js.html;

/**
	The **`MediaCapabilities`** interface of the Media Capabilities API provides information about the decoding abilities of the device, system and browser.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaCapabilities)
**/
@:native("MediaCapabilities") extern class MediaCapabilities {
	function new();
	/**
		The **`decodingInfo()`** method of the MediaCapabilities interface returns a promise that fulfils with information about how well the user agent can decode/display media with a given configuration.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/decodingInfo)
	**/
	function decodingInfo(configuration:MediaDecodingConfiguration):js.lib.Promise<MediaCapabilitiesDecodingInfo>;
	/**
		The **`encodingInfo()`** method of the MediaCapabilities interface returns a promise that fulfills with the tested media configuration's capabilities for encoding media.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/encodingInfo)
	**/
	function encodingInfo(configuration:MediaEncodingConfiguration):js.lib.Promise<MediaCapabilitiesEncodingInfo>;
	static var prototype : MediaCapabilities;
}