package three;
/**
	A class for displaying particles in the form of variable size points. For example, if using the WebGLRenderer, the particles are displayed using GL_POINTS.
**/
@:jsRequire("three", "Points") extern class Points extends Object3D {
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:haxe.extern.EitherType<Material, std.Array<Material>>);
	@:optional
	var morphTargetInfluences : std.Array<Float>;
	@:optional
	var morphTargetDictionary : { };
	var isPoints : Bool;
	/**
		An instance of Geometry or BufferGeometry, where each vertex designates the position of a particle in the system.
	**/
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	/**
		An instance of Material, defining the object's appearance. Default is a PointsMaterial with randomised colour.
	**/
	var material : haxe.extern.EitherType<Material, std.Array<Material>>;
	function updateMorphTargets():Void;
}