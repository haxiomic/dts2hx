package three;
extern typedef UVGenerator = {
	function generateTopUV(geometry:ExtrudeBufferGeometry, vertices:std.Array<Float>, indexA:Float, indexB:Float, indexC:Float):std.Array<Vector2>;
	function generateSideWallUV(geometry:ExtrudeBufferGeometry, vertices:std.Array<Float>, indexA:Float, indexB:Float, indexC:Float, indexD:Float):std.Array<Vector2>;
};