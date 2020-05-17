package three;

typedef Intersection = {
	var distance : Float;
	@:optional
	var distanceToRay : Float;
	var point : Vector3;
	@:optional
	var index : Float;
	@:optional
	var face : Face3;
	@:optional
	var faceIndex : Float;
	var object : Object3D;
	@:optional
	var uv : Vector2;
};