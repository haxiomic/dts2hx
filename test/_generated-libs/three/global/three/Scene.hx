package global.three;

/**
	Scenes allow you to set up what and where is to be rendered by three.js. This is where you place objects, lights and cameras.
**/
@:native("THREE.Scene") extern class Scene extends Object3D {
	function new();
	/**
		A fog instance defining the type of fog that affects everything rendered in the scene. Default is null.
	**/
	var fog : Null<IFog>;
	/**
		If not null, it will force everything in the scene to be rendered with that material. Default is null.
	**/
	var overrideMaterial : Null<Material>;
	var autoUpdate : Bool;
	var background : Null<ts.AnyOf2<Color, Texture>>;
	function toJSON(?meta:Dynamic):Dynamic;
	function dispose():Void;
	function applyQuaternion(quaternion:Quaternion):Scene;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Scene;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Scene;
	function rotateX(angle:Float):Scene;
	function rotateY(angle:Float):Scene;
	function rotateZ(angle:Float):Scene;
	function translateOnAxis(axis:Vector3, distance:Float):Scene;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Scene;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Scene;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Scene;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Scene;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Scene;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Scene;
	function clone(?recursive:Bool):Scene;
	function copy(source:Scene, ?recursive:Bool):Scene;
	static var prototype : Scene;
}