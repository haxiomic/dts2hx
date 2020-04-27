package three;
@:jsRequire("three", "Mesh") extern class Mesh extends Object3D {
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:haxe.extern.EitherType<Material, std.Array<Material>>);
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : haxe.extern.EitherType<Material, std.Array<Material>>;
	var drawMode : TrianglesDrawModes;
	@:optional
	var morphTargetInfluences : std.Array<Float>;
	@:optional
	var morphTargetDictionary : { };
	var isMesh : Bool;
	var type : String;
	function setDrawMode(drawMode:TrianglesDrawModes):Void;
	function updateMorphTargets():Void;
	function raycast(raycaster:Raycaster, intersects:std.Array<Intersection>):Void;
}