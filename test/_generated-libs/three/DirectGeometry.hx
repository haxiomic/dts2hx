package three;
@:jsRequire("three", "DirectGeometry") extern class DirectGeometry {
	function new();
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var indices : std.Array<Float>;
	var vertices : std.Array<Vector3>;
	var normals : std.Array<Vector3>;
	var colors : std.Array<Color>;
	var uvs : std.Array<Vector2>;
	var uvs2 : std.Array<Vector2>;
	var groups : std.Array<{
		var start : Float;
		var materialIndex : Float;
	}>;
	var morphTargets : std.Array<MorphTarget>;
	var skinWeights : std.Array<Vector4>;
	var skinIndices : std.Array<Vector4>;
	var boundingBox : Box3;
	var boundingSphere : Sphere;
	var verticesNeedUpdate : Bool;
	var normalsNeedUpdate : Bool;
	var colorsNeedUpdate : Bool;
	var uvsNeedUpdate : Bool;
	var groupsNeedUpdate : Bool;
	function computeBoundingBox():Void;
	function computeBoundingSphere():Void;
	function computeGroups(geometry:Geometry):Void;
	function fromGeometry(geometry:Geometry):DirectGeometry;
	function dispose():Void;
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