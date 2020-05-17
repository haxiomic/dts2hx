package three;

typedef UVGenerator = {
	function generateTopUV(geometry:ExtrudeBufferGeometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float):Array<Vector2>;
	function generateSideWallUV(geometry:ExtrudeBufferGeometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float, indexD:Float):Array<Vector2>;
};