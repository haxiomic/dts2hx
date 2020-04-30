package three;
@:jsRequire("three", "Skeleton") extern class Skeleton {
	function new(bones:std.Array<Bone>, ?boneInverses:std.Array<Matrix4>);
	var useVertexTexture : Bool;
	var identityMatrix : Matrix4;
	var bones : std.Array<Bone>;
	var boneTextureWidth : Float;
	var boneTextureHeight : Float;
	var boneMatrices : ts.lib.IFloat32Array;
	var boneTexture : DataTexture;
	var boneInverses : std.Array<Matrix4>;
	function calculateInverses(bone:Bone):Void;
	function pose():Void;
	function update():Void;
	function clone():Skeleton;
}