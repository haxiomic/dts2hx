package global.three;

/**
	Base class for scene graph objects
**/
@:native("THREE.Object3D") extern class Object3D extends EventDispatcher {
	function new();
	/**
		Unique number of this object instance.
	**/
	var id : Float;
	var uuid : String;
	/**
		Optional name of the object (doesn't need to be unique).
	**/
	var name : String;
	var type : String;
	/**
		Object's parent in the scene graph.
	**/
	var parent : Null<Object3D>;
	/**
		Array with object's children.
	**/
	var children : Array<Object3D>;
	/**
		Up direction.
	**/
	var up : Vector3;
	/**
		Object's local position.
	**/
	var position : Vector3;
	/**
		Object's local rotation (Euler angles), in radians.
	**/
	var rotation : Euler;
	/**
		Global rotation.
	**/
	var quaternion : Quaternion;
	/**
		Object's local scale.
	**/
	var scale : Vector3;
	var modelViewMatrix : Matrix4;
	var normalMatrix : Matrix3;
	/**
		Local transform.
	**/
	var matrix : Matrix4;
	/**
		The global transform of the object. If the Object3d has no parent, then it's identical to the local transform.
	**/
	var matrixWorld : Matrix4;
	/**
		When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
	**/
	var matrixAutoUpdate : Bool;
	/**
		When this is set, it calculates the matrixWorld in that frame and resets this property to false.
	**/
	var matrixWorldNeedsUpdate : Bool;
	var layers : Layers;
	/**
		Object gets rendered if true.
	**/
	var visible : Bool;
	/**
		Gets rendered into shadow map.
	**/
	var castShadow : Bool;
	/**
		Material gets baked in shadow receiving.
	**/
	var receiveShadow : Bool;
	/**
		When this is set, it checks every frame if the object is in the frustum of the camera. Otherwise the object gets drawn every frame even if it isn't visible.
	**/
	var frustumCulled : Bool;
	/**
		Overrides the default rendering order of scene graph objects, from lowest to highest renderOrder. Opaque and transparent objects remain sorted independently though. When this property is set for an instance of Group, all descendants objects will be sorted and rendered together.
	**/
	var renderOrder : Float;
	/**
		An object that can be used to store custom data about the Object3d. It should not hold references to functions as these will not be cloned.
	**/
	var userData : haxe.DynamicAccess<Dynamic>;
	/**
		Custom depth material to be used when rendering to the depth map. Can only be used in context of meshes.
		When shadow-casting with a DirectionalLight or SpotLight, if you are (a) modifying vertex positions in
		the vertex shader, (b) using a displacement map, (c) using an alpha map with alphaTest, or (d) using a
		transparent texture with alphaTest, you must specify a customDepthMaterial for proper shadows.
	**/
	var customDepthMaterial : Material;
	/**
		Same as customDepthMaterial, but used with PointLight.
	**/
	var customDistanceMaterial : Material;
	/**
		Used to check whether this or derived classes are Object3Ds. Default is true.
		You should not change this, as it is used internally for optimisation.
	**/
	var isObject3D : Bool;
	/**
		Calls before rendering object
	**/
	dynamic function onBeforeRender(renderer:WebGLRenderer, scene:Scene, camera:Camera, geometry:ts.AnyOf2<Geometry, BufferGeometry>, material:Material, group:Group):Void;
	/**
		Calls after rendering object
	**/
	dynamic function onAfterRender(renderer:WebGLRenderer, scene:Scene, camera:Camera, geometry:ts.AnyOf2<Geometry, BufferGeometry>, material:Material, group:Group):Void;
	/**
		This updates the position, rotation and scale with the matrix.
	**/
	function applyMatrix(matrix:Matrix4):Void;
	function applyQuaternion(quaternion:Quaternion):Object3D;
	function setRotationFromAxisAngle(axis:Vector3, angle:Float):Void;
	function setRotationFromEuler(euler:Euler):Void;
	function setRotationFromMatrix(m:Matrix4):Void;
	function setRotationFromQuaternion(q:Quaternion):Void;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Object3D;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Object3D;
	function rotateX(angle:Float):Object3D;
	function rotateY(angle:Float):Object3D;
	function rotateZ(angle:Float):Object3D;
	function translateOnAxis(axis:Vector3, distance:Float):Object3D;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Object3D;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Object3D;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Object3D;
	/**
		Updates the vector from local space to world space.
	**/
	function localToWorld(vector:Vector3):Vector3;
	/**
		Updates the vector from world space to local space.
	**/
	function worldToLocal(vector:Vector3):Vector3;
	/**
		Rotates object to face point in space.
	**/
	function lookAt(vector:ts.AnyOf2<Float, Vector3>, ?y:Float, ?z:Float):Void;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Object3D;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Object3D;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Object3D;
	/**
		Searches through the object's children and returns the first with a matching id.
	**/
	function getObjectById(id:Float):Null<Object3D>;
	/**
		Searches through the object's children and returns the first with a matching name.
	**/
	function getObjectByName(name:String):Null<Object3D>;
	function getObjectByProperty(name:String, value:String):Null<Object3D>;
	function getWorldPosition(target:Vector3):Vector3;
	function getWorldQuaternion(target:Quaternion):Quaternion;
	function getWorldScale(target:Vector3):Vector3;
	function getWorldDirection(target:Vector3):Vector3;
	function raycast(raycaster:Raycaster, intersects:Array<Intersection>):Void;
	function traverse(callback:(object:Object3D) -> Dynamic):Void;
	function traverseVisible(callback:(object:Object3D) -> Dynamic):Void;
	function traverseAncestors(callback:(object:Object3D) -> Dynamic):Void;
	/**
		Updates local transform.
	**/
	function updateMatrix():Void;
	/**
		Updates global transform of the object and its children.
	**/
	function updateMatrixWorld(?force:Bool):Void;
	function updateWorldMatrix(updateParents:Bool, updateChildren:Bool):Void;
	function toJSON(?meta:{ var geometries : Dynamic; var materials : Dynamic; var textures : Dynamic; var images : Dynamic; }):Dynamic;
	function clone(?recursive:Bool):Object3D;
	function copy(source:Object3D, ?recursive:Bool):Object3D;
	static var prototype : Object3D;
	static var DefaultUp : Vector3;
	static var DefaultMatrixAutoUpdate : Bool;
}