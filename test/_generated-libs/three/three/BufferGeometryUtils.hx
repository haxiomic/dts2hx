package three;

@:jsRequire("three", "BufferGeometryUtils") @valueModuleOnly extern class BufferGeometryUtils {
	static function mergeBufferGeometries(geometries:Array<BufferGeometry>):BufferGeometry;
	static function computeTangents(geometry:BufferGeometry):Dynamic;
	static function mergeBufferAttributes(attributes:Array<BufferAttribute>):BufferAttribute;
}