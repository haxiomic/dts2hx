package three;
/**
	Camera with perspective projection.
**/
@:jsRequire("three", "PerspectiveCamera") extern class PerspectiveCamera {
	function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float);
	var type : String;
	var isPerspectiveCamera : Bool;
	var zoom : Float;
	/**
		Camera frustum vertical field of view, from bottom to top of view, in degrees.
	**/
	var fov : Float;
	/**
		Camera frustum aspect ratio, window width divided by window height.
	**/
	var aspect : Float;
	/**
		Camera frustum near plane.
	**/
	var near : Float;
	/**
		Camera frustum far plane.
	**/
	var far : Float;
	var focus : Float;
	var view : Null<{
		var enabled : Bool;
		var fullWidth : Float;
		var fullHeight : Float;
		var offsetX : Float;
		var offsetY : Float;
		var width : Float;
		var height : Float;
	}>;
	var filmGauge : Float;
	var filmOffset : Float;
	function setFocalLength(focalLength:Float):Void;
	function getFocalLength():Float;
	function getEffectiveFOV():Float;
	function getFilmWidth():Float;
	function getFilmHeight():Float;
	/**
		Sets an offset in a larger frustum. This is useful for multi-window or multi-monitor/multi-machine setups.
		For example, if you have 3x2 monitors and each monitor is 1920x1080 and the monitors are in grid like this:
		
				 +---+---+---+
				 | A | B | C |
				 +---+---+---+
				 | D | E | F |
				 +---+---+---+
		
		then for each monitor you would call it like this:
		
				 var w = 1920;
				 var h = 1080;
				 var fullWidth = w * 3;
				 var fullHeight = h * 2;
		
				 // A
				 camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
				 // B
				 camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
				 // C
				 camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
				 // D
				 camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
				 // E
				 camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
				 // F
				 camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h ); Note there is no reason monitors have to be the same size or in a grid.
	**/
	function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function clearViewOffset():Void;
	/**
		Updates the camera projection matrix. Must be called after change of parameters.
	**/
	function updateProjectionMatrix():Void;
	function toJSON(?meta:Any):Any;
	function setLens(focalLength:Float, ?frameHeight:Float):Void;
	/**
		This is the inverse of matrixWorld. MatrixWorld contains the Matrix which has the world transform of the Camera.
	**/
	var matrixWorldInverse : Matrix4;
	/**
		This is the matrix which contains the projection.
	**/
	var projectionMatrix : Matrix4;
	/**
		This is the inverse of projectionMatrix.
	**/
	var projectionMatrixInverse : Matrix4;
	var isCamera : Bool;
	function getWorldDirection(target:Vector3):Vector3;
	/**
		Updates global transform of the object and its children.
	**/
	function updateMatrixWorld(?force:Bool):Void;
	/**
		Unique number of this object instance.
	**/
	var id : Float;
	var uuid : String;
	/**
		Optional name of the object (doesn't need to be unique).
	**/
	var name : String;
	/**
		Object's parent in the scene graph.
	**/
	var parent : Null<Object3D>;
	/**
		Array with object's children.
	**/
	var children : std.Array<Object3D>;
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
	var userData : { };
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
	var onBeforeRender : (renderer:WebGLRenderer, scene:Scene, camera:Camera, geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, material:Material, group:Group) -> Void;
	/**
		Calls after rendering object
	**/
	var onAfterRender : (renderer:WebGLRenderer, scene:Scene, camera:Camera, geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, material:Material, group:Group) -> Void;
	/**
		This updates the position, rotation and scale with the matrix.
	**/
	function applyMatrix(matrix:Matrix4):Void;
	function applyQuaternion(quaternion:Quaternion):PerspectiveCamera;
	function setRotationFromAxisAngle(axis:Vector3, angle:Float):Void;
	function setRotationFromEuler(euler:Euler):Void;
	function setRotationFromMatrix(m:Matrix4):Void;
	function setRotationFromQuaternion(q:Quaternion):Void;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PerspectiveCamera;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PerspectiveCamera;
	function rotateX(angle:Float):PerspectiveCamera;
	function rotateY(angle:Float):PerspectiveCamera;
	function rotateZ(angle:Float):PerspectiveCamera;
	function translateOnAxis(axis:Vector3, distance:Float):PerspectiveCamera;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PerspectiveCamera;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PerspectiveCamera;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PerspectiveCamera;
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
	function lookAt(vector:haxe.extern.EitherType<Float, Vector3>, ?y:Float, ?z:Float):Void;
	/**
		Adds object as child of this object.
	**/
	function add(object:std.Array<Object3D>):PerspectiveCamera;
	/**
		Removes object as child of this object.
	**/
	function remove(object:std.Array<Object3D>):PerspectiveCamera;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PerspectiveCamera;
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
	function raycast(raycaster:Raycaster, intersects:std.Array<Intersection>):Void;
	function traverse(callback:(object:Object3D) -> Any):Void;
	function traverseVisible(callback:(object:Object3D) -> Any):Void;
	function traverseAncestors(callback:(object:Object3D) -> Any):Void;
	/**
		Updates local transform.
	**/
	function updateMatrix():Void;
	function updateWorldMatrix(updateParents:Bool, updateChildren:Bool):Void;
	function clone(?recursive:Bool):PerspectiveCamera;
	function copy(source:PerspectiveCamera, ?recursive:Bool):PerspectiveCamera;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener(type:String, listener:(event:Event) -> Void):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Fire an event type.
	**/
	function dispatchEvent(event:{ var type : String; }):Void;
}