package js.html;

/**
	The **`GeolocationPositionError`** interface represents the reason of an error occurring when using the geolocating device.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError)
**/
typedef IGeolocationPositionError = {
	/**
		The **`code`** read-only property of the GeolocationPositionError interface is an `unsigned short` representing the error code.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError/code)
	**/
	final code : Float;
	/**
		The **`message`** read-only property of the GeolocationPositionError interface returns a human-readable string describing the details of the error.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError/message)
	**/
	final message : String;
	final PERMISSION_DENIED : Int;
	final POSITION_UNAVAILABLE : Int;
	final TIMEOUT : Int;
};