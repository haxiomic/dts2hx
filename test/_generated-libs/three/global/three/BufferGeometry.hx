package global.three;

/**
	This is a superefficent class for geometries because it saves all data in buffers.
	It reduces memory costs and cpu cycles. But it is not as easy to work with because of all the nessecary buffer calculations.
	It is mainly interesting when working with static objects.
**/
@:native("THREE.BufferGeometry") extern class BufferGeometry extends EventDispatcher {
	/**
		This creates a new BufferGeometry. It also sets several properties to an default value.
	**/
	function new();
	/**
		Unique number of this buffergeometry instance
	**/
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var index : BufferAttribute;
	var attributes : haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>;
	var morphAttributes : Dynamic;
	var groups : Array<{
		var start : Float;
		var count : Float;
		@:optional
		var materialIndex : Float;
	}>;
	var boundingBox : Box3;
	var boundingSphere : Sphere;
	var drawRange : {
		var start : Float;
		var count : Float;
	};
	var userData : haxe.DynamicAccess<Dynamic>;
	function getIndex():BufferAttribute;
	function setIndex(index:ts.AnyOf2<Array<Float>, BufferAttribute>):Void;
	@:overload(function(name:Dynamic, array:Dynamic, itemSize:Dynamic):Dynamic { })
	function addAttribute(name:String, attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>):BufferGeometry;
	function getAttribute(name:String):ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>;
	function removeAttribute(name:String):BufferGeometry;
	function addGroup(start:Float, count:Float, ?materialIndex:Float):Void;
	function clearGroups():Void;
	function setDrawRange(start:Float, count:Float):Void;
	/**
		Bakes matrix transform directly into vertex coordinates.
	**/
	function applyMatrix(matrix:Matrix4):BufferGeometry;
	function rotateX(angle:Float):BufferGeometry;
	function rotateY(angle:Float):BufferGeometry;
	function rotateZ(angle:Float):BufferGeometry;
	function translate(x:Float, y:Float, z:Float):BufferGeometry;
	function scale(x:Float, y:Float, z:Float):BufferGeometry;
	function lookAt(v:Vector3):Void;
	function center():BufferGeometry;
	function setFromObject(object:Object3D):BufferGeometry;
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):BufferGeometry;
	function updateFromObject(object:Object3D):Void;
	function fromGeometry(geometry:Geometry, ?settings:Dynamic):BufferGeometry;
	function fromDirectGeometry(geometry:DirectGeometry):BufferGeometry;
	/**
		Computes bounding box of the geometry, updating Geometry.boundingBox attribute.
		Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are null.
	**/
	function computeBoundingBox():Void;
	/**
		Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
		Bounding spheres aren't' computed by default. They need to be explicitly computed, otherwise they are null.
	**/
	function computeBoundingSphere():Void;
	/**
		Computes vertex normals by averaging face normals.
	**/
	function computeVertexNormals():Void;
	function merge(geometry:BufferGeometry, offset:Float):BufferGeometry;
	function normalizeNormals():Void;
	function toNonIndexed():BufferGeometry;
	function toJSON():Dynamic;
	function clone():BufferGeometry;
	function copy(source:BufferGeometry):BufferGeometry;
	/**
		Disposes the object from memory.
		You need to call this when you want the bufferGeometry removed while the application is running.
	**/
	function dispose():Void;
	var drawcalls : Dynamic;
	var offsets : Dynamic;
	function addIndex(index:Dynamic):Void;
	function addDrawCall(start:Dynamic, count:Dynamic, ?indexOffset:Dynamic):Void;
	function clearDrawCalls():Void;
	static var prototype : BufferGeometry;
	static var MaxIndex : Float;
}