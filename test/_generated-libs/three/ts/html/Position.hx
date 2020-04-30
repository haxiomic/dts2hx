package ts.html;
/**
	The position of the concerned device at a given time. The position, represented by a Coordinates object, comprehends the 2D position of the device, on a spheroid representing the Earth, but also its altitude and its speed.
**/
extern typedef Position = {
	final coords : Coordinates;
	final timestamp : Float;
};