package js.html;

/**
	The **`GeolocationPosition`** interface represents the position of the concerned device at a given time.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPosition)
**/
@:native("GeolocationPosition") extern class GeolocationPosition {
	function new();
	/**
		The **`coords`** read-only property of the GeolocationPosition interface returns a GeolocationCoordinates object representing a geographic position.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/coords)
	**/
	final coords : GeolocationCoordinates;
	/**
		The **`timestamp`** read-only property of the GeolocationPosition interface represents the date and time that the position was acquired by the device.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/timestamp)
	**/
	final timestamp : Float;
	/**
		The **`toJSON()`** method of the GeolocationPosition interface is a Serialization; it returns a JSON representation of the GeolocationPosition object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/toJSON)
	**/
	function toJSON():Dynamic;
	static var prototype : GeolocationPosition;
}