package ts.html;
/**
	The position and altitude of the device on Earth, as well as the accuracy with which these properties are calculated.
**/
typedef Coordinates = {
	final accuracy : Float;
	final altitude : Null<Float>;
	final altitudeAccuracy : Null<Float>;
	final heading : Null<Float>;
	final latitude : Float;
	final longitude : Float;
	final speed : Null<Float>;
};