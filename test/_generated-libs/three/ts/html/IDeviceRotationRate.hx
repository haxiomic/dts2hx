package ts.html;
/**
	Provides information about the rate at which the device is rotating around all three axes.
**/
extern typedef IDeviceRotationRate = {
	final alpha : Null<Float>;
	final beta : Null<Float>;
	final gamma : Null<Float>;
};