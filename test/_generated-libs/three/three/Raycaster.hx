package three;

@:jsRequire("three", "Raycaster") extern class Raycaster {
	/**
		This creates a new raycaster object.
	**/
	function new(?origin:Vector3, ?direction:Vector3, ?near:Float, ?far:Float);
	/**
		The Ray used for the raycasting.
	**/
	var ray : Ray;
	/**
		The near factor of the raycaster. This value indicates which objects can be discarded based on the
		distance. This value shouldn't be negative and should be smaller than the far property.
	**/
	var near : Float;
	/**
		The far factor of the raycaster. This value indicates which objects can be discarded based on the
		distance. This value shouldn't be negative and should be larger than the near property.
	**/
	var far : Float;
	var params : RaycasterParameters;
	/**
		The precision factor of the raycaster when intersecting Line objects.
	**/
	var linePrecision : Float;
	/**
		Updates the ray with a new origin and direction.
	**/
	function set(origin:Vector3, direction:Vector3):Void;
	/**
		Updates the ray with a new origin and direction.
	**/
	function setFromCamera(coords:{ var x : Float; var y : Float; }, camera:Camera):Void;
	/**
		Checks all intersection between the ray and the object with or without the descendants. Intersections are returned sorted by distance, closest first.
	**/
	function intersectObject(object:Object3D, ?recursive:Bool, ?optionalTarget:Array<Intersection>):Array<Intersection>;
	/**
		Checks all intersection between the ray and the objects with or without the descendants. Intersections are returned sorted by distance, closest first. Intersections are of the same form as those returned by .intersectObject.
	**/
	function intersectObjects(objects:Array<Object3D>, ?recursive:Bool, ?optionalTarget:Array<Intersection>):Array<Intersection>;
	static var prototype : Raycaster;
}