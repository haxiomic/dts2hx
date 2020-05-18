package js.html;

/**
	This WebVR API interface represents a field of view defined by 4 different degree values describing the view from a center point.
**/
@:native("VRFieldOfView") extern class VRFieldOfView {
	function new();
	final downDegrees : Float;
	final leftDegrees : Float;
	final rightDegrees : Float;
	final upDegrees : Float;
	static var prototype : VRFieldOfView;
}