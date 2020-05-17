package three;

typedef ExtrudeGeometryOptions = {
	@:optional
	var curveSegments : Float;
	@:optional
	var steps : Float;
	@:optional
	var depth : Float;
	@:optional
	var bevelEnabled : Bool;
	@:optional
	var bevelThickness : Float;
	@:optional
	var bevelSize : Float;
	@:optional
	var bevelOffset : Float;
	@:optional
	var bevelSegments : Float;
	@:optional
	var extrudePath : Curve<Vector3>;
	@:optional
	var UVGenerator : UVGenerator;
};