package ts.html;
/**
	A single contact point on a touch-sensitive device. The contact point is commonly a finger or stylus and the device may be a touchscreen or trackpad.
**/
typedef ITouch = {
	final altitudeAngle : Float;
	final azimuthAngle : Float;
	final clientX : Float;
	final clientY : Float;
	final force : Float;
	final identifier : Float;
	final pageX : Float;
	final pageY : Float;
	final radiusX : Float;
	final radiusY : Float;
	final rotationAngle : Float;
	final screenX : Float;
	final screenY : Float;
	final target : EventTarget;
	final touchType : TouchType;
};