package three;
@:jsRequire("three", "BufferGeometryLoader") extern class BufferGeometryLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, onLoad:(bufferGeometry:BufferGeometry) -> Void, ?onProgress:(event:Any) -> Void, ?onError:(event:Any) -> Void):Void;
	function parse(json:Any):BufferGeometry;
}