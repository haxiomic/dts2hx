package js.html;
/**
	An object able to programmatically obtain the position of the device. It gives Web content access to the location of the device. This allows a Web site or app to offer customized results based on the user's location.
**/
extern interface Geolocation {
	function clearWatch(watchId:Float):Void;
	function getCurrentPosition(successCallback:PositionCallback, ?errorCallback:PositionErrorCallback, ?options:PositionOptions):Void;
	function watchPosition(successCallback:PositionCallback, ?errorCallback:PositionErrorCallback, ?options:PositionOptions):Float;
}