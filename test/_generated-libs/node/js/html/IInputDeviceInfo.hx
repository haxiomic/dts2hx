package js.html;

/**
	The **`InputDeviceInfo`** interface of the Media Capture and Streams API gives access to the capabilities of the input device that it represents.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/InputDeviceInfo)
**/
typedef IInputDeviceInfo = {
	/**
		The **`getCapabilities()`** method of the InputDeviceInfo interface returns a `MediaTrackCapabilities` object describing the primary audio or video track of the device's MediaStream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/InputDeviceInfo/getCapabilities)
	**/
	function getCapabilities():MediaTrackCapabilities;
	/**
		The **`deviceId`** read-only property of the MediaDeviceInfo interface returns a string that is an identifier for the represented device and is persisted across sessions.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/deviceId)
	**/
	final deviceId : String;
	/**
		The **`groupId`** read-only property of the MediaDeviceInfo interface returns a string that is a group identifier.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/groupId)
	**/
	final groupId : String;
	/**
		The **`kind`** read-only property of the MediaDeviceInfo interface returns an enumerated value, that is either `'videoinput'`, `'audioinput'` or `'audiooutput'`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/kind)
	**/
	final kind : js.html.MediaDeviceKind;
	/**
		The **`label`** read-only property of the MediaDeviceInfo interface returns a string describing this device (for example 'External USB Webcam').
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/label)
	**/
	final label : String;
	/**
		The **`toJSON()`** method of the MediaDeviceInfo interface is a Serialization; it returns a JSON representation of the MediaDeviceInfo object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/toJSON)
	**/
	function toJSON():Dynamic;
};