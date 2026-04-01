package global.three;

/**
	A class for displaying particles in the form of variable size points. For example, if using the WebGLRenderer, the particles are displayed using GL_POINTS.
**/
@:native("THREE.Points") extern class Points extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>);
	@:optional
	var morphTargetInfluences : Array<Float>;
	@:optional
	var morphTargetDictionary : haxe.DynamicAccess<Float>;
	var isPoints : Bool;
	/**
		An instance of Geometry or BufferGeometry, where each vertex designates the position of a particle in the system.
	**/
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	/**
		An instance of Material, defining the object's appearance. Default is a PointsMaterial with randomised colour.
	**/
	var material : ts.AnyOf2<Material, Array<Material>>;
	function updateMorphTargets():Void;
	function applyQuaternion(quaternion:Quaternion):Points;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Points;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Points;
	function rotateX(angle:Float):Points;
	function rotateY(angle:Float):Points;
	function rotateZ(angle:Float):Points;
	function translateOnAxis(axis:Vector3, distance:Float):Points;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Points;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Points;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Points;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Points;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Points;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Points;
	function clone(?recursive:Bool):Points;
	function copy(source:Points, ?recursive:Bool):Points;
	static var prototype : Points;
}