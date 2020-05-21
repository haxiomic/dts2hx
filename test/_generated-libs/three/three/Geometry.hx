package three;

/**
	Base class for geometries
**/
@:jsRequire("three", "Geometry") extern class Geometry extends EventDispatcher {
	function new();
	/**
		Unique number of this geometry instance
	**/
	var id : Float;
	var uuid : String;
	/**
		Name for this geometry. Default is an empty string.
	**/
	var name : String;
	var type : String;
	/**
		The array of vertices hold every position of points of the model.
		To signal an update in this array, Geometry.verticesNeedUpdate needs to be set to true.
	**/
	var vertices : Array<Vector3>;
	/**
		Array of vertex colors, matching number and order of vertices.
		Used in ParticleSystem, Line and Ribbon.
		Meshes use per-face-use-of-vertex colors embedded directly in faces.
		To signal an update in this array, Geometry.colorsNeedUpdate needs to be set to true.
	**/
	var colors : Array<Color>;
	/**
		Array of triangles or/and quads.
		The array of faces describe how each vertex in the model is connected with each other.
		To signal an update in this array, Geometry.elementsNeedUpdate needs to be set to true.
	**/
	var faces : Array<Face3>;
	/**
		Array of face UV layers.
		Each UV layer is an array of UV matching order and number of vertices in faces.
		To signal an update in this array, Geometry.uvsNeedUpdate needs to be set to true.
	**/
	var faceVertexUvs : Array<Array<Array<Vector2>>>;
	/**
		Array of morph targets. Each morph target is a Javascript object:
		
				 { name: "targetName", vertices: [ new THREE.Vector3(), ... ] }
		
		Morph vertices match number and order of primary vertices.
	**/
	var morphTargets : Array<MorphTarget>;
	/**
		Array of morph normals. Morph normals have similar structure as morph targets, each normal set is a Javascript object:
		
				 morphNormal = { name: "NormalName", normals: [ new THREE.Vector3(), ... ] }
	**/
	var morphNormals : Array<MorphNormals>;
	/**
		Array of skinning weights, matching number and order of vertices.
	**/
	var skinWeights : Array<Vector4>;
	/**
		Array of skinning indices, matching number and order of vertices.
	**/
	var skinIndices : Array<Vector4>;
	var lineDistances : Array<Float>;
	/**
		Bounding box.
	**/
	var boundingBox : Box3;
	/**
		Bounding sphere.
	**/
	var boundingSphere : Sphere;
	/**
		Set to true if the vertices array has been updated.
	**/
	var verticesNeedUpdate : Bool;
	/**
		Set to true if the faces array has been updated.
	**/
	var elementsNeedUpdate : Bool;
	/**
		Set to true if the uvs array has been updated.
	**/
	var uvsNeedUpdate : Bool;
	/**
		Set to true if the normals array has been updated.
	**/
	var normalsNeedUpdate : Bool;
	/**
		Set to true if the colors array has been updated.
	**/
	var colorsNeedUpdate : Bool;
	/**
		Set to true if the linedistances array has been updated.
	**/
	var lineDistancesNeedUpdate : Bool;
	var groupsNeedUpdate : Bool;
	/**
		Bakes matrix transform directly into vertex coordinates.
	**/
	function applyMatrix(matrix:Matrix4):Geometry;
	function rotateX(angle:Float):Geometry;
	function rotateY(angle:Float):Geometry;
	function rotateZ(angle:Float):Geometry;
	function translate(x:Float, y:Float, z:Float):Geometry;
	function scale(x:Float, y:Float, z:Float):Geometry;
	function lookAt(vector:Vector3):Void;
	function fromBufferGeometry(geometry:BufferGeometry):Geometry;
	function center():Geometry;
	function normalize():Geometry;
	/**
		Computes face normals.
	**/
	function computeFaceNormals():Void;
	/**
		Computes vertex normals by averaging face normals.
		Face normals must be existing / computed beforehand.
	**/
	function computeVertexNormals(?areaWeighted:Bool):Void;
	/**
		Compute vertex normals, but duplicating face normals.
	**/
	function computeFlatVertexNormals():Void;
	/**
		Computes morph normals.
	**/
	function computeMorphNormals():Void;
	/**
		Computes bounding box of the geometry, updating {@link Geometry.boundingBox} attribute.
	**/
	function computeBoundingBox():Void;
	/**
		Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
		Neither bounding boxes or bounding spheres are computed by default. They need to be explicitly computed, otherwise they are null.
	**/
	function computeBoundingSphere():Void;
	function merge(geometry:Geometry, ?matrix:Matrix, ?materialIndexOffset:Float):Void;
	function mergeMesh(mesh:Mesh):Void;
	/**
		Checks for duplicate vertices using hashmap.
		Duplicated vertices are removed and faces' vertices are updated.
	**/
	function mergeVertices():Float;
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):Geometry;
	function sortFacesByMaterialIndex():Void;
	function toJSON():Dynamic;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():Geometry;
	function copy(source:Geometry):Geometry;
	/**
		Removes The object from memory.
		Don't forget to call this method when you remove an geometry because it can cuase meomory leaks.
	**/
	function dispose():Void;
	var bones : Array<Bone>;
	var animation : AnimationClip;
	var animations : Array<AnimationClip>;
	static var prototype : Geometry;
}