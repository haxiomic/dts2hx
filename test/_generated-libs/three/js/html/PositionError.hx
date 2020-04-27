package js.html;
/**
	The reason of an error occurring when using the geolocating device.
**/
extern typedef PositionError = { final code : Float; final message : String; final PERMISSION_DENIED : Float; final POSITION_UNAVAILABLE : Float; final TIMEOUT : Float; };