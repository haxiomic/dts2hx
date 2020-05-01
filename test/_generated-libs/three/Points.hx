package three;
/**
	A class for displaying particles in the form of variable size points. For example, if using the WebGLRenderer, the particles are displayed using GL_POINTS.
**/
@:jsRequire("three", "Points") extern class Points extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, std.Array<Material>>);
	@:optional
	var morphTargetInfluences : std.Array<Float>;
	@:optional
	var morphTargetDictionary : { };
	var isPoints : Bool;
	/**
		An instance of Geometry or BufferGeometry, where each vertex designates the position of a particle in the system.
	**/
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	/**
		An instance of Material, defining the object's appearance. Default is a PointsMaterial with randomised colour.
	**/
	var material : ts.AnyOf2<Material, std.Array<Material>>;
	function updateMorphTargets():Void;
}