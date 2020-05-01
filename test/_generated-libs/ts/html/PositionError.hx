package ts.html;
/**
	The reason of an error occurring when using the geolocating device.
**/
typedef PositionError = {
	final code : Float;
	final message : String;
	final PERMISSION_DENIED : Float;
	final POSITION_UNAVAILABLE : Float;
	final TIMEOUT : Float;
};