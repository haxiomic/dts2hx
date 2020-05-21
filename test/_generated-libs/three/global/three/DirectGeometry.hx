package global.three;

@:native("THREE.DirectGeometry") extern class DirectGeometry extends EventDispatcher {
	function new();
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var indices : Array<Float>;
	var vertices : Array<Vector3>;
	var normals : Array<Vector3>;
	var colors : Array<Color>;
	var uvs : Array<Vector2>;
	var uvs2 : Array<Vector2>;
	var groups : Array<{
		var start : Float;
		var materialIndex : Float;
	}>;
	var morphTargets : Array<MorphTarget>;
	var skinWeights : Array<Vector4>;
	var skinIndices : Array<Vector4>;
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
	static var prototype : DirectGeometry;
}