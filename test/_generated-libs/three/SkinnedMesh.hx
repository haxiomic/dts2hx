package three;
@:jsRequire("three", "SkinnedMesh") extern class SkinnedMesh extends Mesh {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, std.Array<Material>>, ?useVertexTexture:Bool);
	var bindMode : String;
	var bindMatrix : Matrix4;
	var bindMatrixInverse : Matrix4;
	var skeleton : Skeleton;
	function bind(skeleton:Skeleton, ?bindMatrix:Matrix4):Void;
	function pose():Void;
	function normalizeSkinWeights():Void;
}