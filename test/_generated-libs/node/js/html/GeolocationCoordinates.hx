package js.html;

/**
	The **`GeolocationCoordinates`** interface represents the position and altitude of the device on Earth, as well as the accuracy with which these properties are calculated.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates)
**/
@:native("GeolocationCoordinates") extern class GeolocationCoordinates {
	function new();
	/**
		The **`accuracy`** read-only property of the GeolocationCoordinates interface is a strictly positive `double` representing the accuracy, with a 95% confidence level, of the GeolocationCoordinates.latitude and GeolocationCoordinates.longitude properties expressed in meters.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/accuracy)
	**/
	final accuracy : Float;
	/**
		The **`altitude`** read-only property of the GeolocationCoordinates interface is a `double` representing the altitude of the position in meters above the WGS84 ellipsoid (which defines the nominal sea level surface).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/altitude)
	**/
	final altitude : Null<Float>;
	/**
		The **`altitudeAccuracy`** read-only property of the GeolocationCoordinates interface is a strictly positive `double` representing the accuracy, with a 95% confidence level, of the `altitude` expressed in meters.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/altitudeAccuracy)
	**/
	final altitudeAccuracy : Null<Float>;
	/**
		The **`heading`** read-only property of the GeolocationCoordinates interface is a `double` representing the direction in which the device is traveling.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/heading)
	**/
	final heading : Null<Float>;
	/**
		The **`latitude`** read-only property of the GeolocationCoordinates interface is a `double` representing the latitude of the position in decimal degrees.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/latitude)
	**/
	final latitude : Float;
	/**
		The **`longitude`** read-only property of the GeolocationCoordinates interface is a number which represents the longitude of a geographical position, specified in decimal degrees.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/longitude)
	**/
	final longitude : Float;
	/**
		The **`speed`** read-only property of the GeolocationCoordinates interface is a `double` representing the velocity of the device in meters per second.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/speed)
	**/
	final speed : Null<Float>;
	/**
		The **`toJSON()`** method of the GeolocationCoordinates interface is a Serialization; it returns a JSON representation of the GeolocationCoordinates object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/toJSON)
	**/
	function toJSON():Dynamic;
	static var prototype : GeolocationCoordinates;
}