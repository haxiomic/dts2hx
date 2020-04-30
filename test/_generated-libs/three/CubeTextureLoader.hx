package three;
@:jsRequire("three", "CubeTextureLoader") extern class CubeTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var crossOrigin : String;
	@:optional
	var path : String;
	function load(urls:std.Array<String>, ?onLoad:(texture:CubeTexture) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.html.IErrorEvent) -> Void):CubeTexture;
	function setCrossOrigin(crossOrigin:String):CubeTextureLoader;
	function setPath(path:String):CubeTextureLoader;
}