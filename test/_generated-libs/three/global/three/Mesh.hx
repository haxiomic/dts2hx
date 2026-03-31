package global.three;

@:native("THREE.Mesh") extern class Mesh extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>);
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	var material : ts.AnyOf2<Material, Array<Material>>;
	var drawMode : TrianglesDrawModes;
	@:optional
	var morphTargetInfluences : Array<Float>;
	@:optional
	var morphTargetDictionary : haxe.DynamicAccess<Float>;
	var isMesh : Bool;
	function setDrawMode(drawMode:TrianglesDrawModes):Void;
	function updateMorphTargets():Void;
	function copy(source:Mesh, ?recursive:Bool):Mesh;
	static var prototype : Mesh;
}