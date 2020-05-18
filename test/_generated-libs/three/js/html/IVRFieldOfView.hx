package js.html;

/**
	This WebVR API interface represents a field of view defined by 4 different degree values describing the view from a center point.
**/
typedef IVRFieldOfView = {
	final downDegrees : Float;
	final leftDegrees : Float;
	final rightDegrees : Float;
	final upDegrees : Float;
};