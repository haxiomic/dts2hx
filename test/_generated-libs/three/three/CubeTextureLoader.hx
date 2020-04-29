package three;
@:jsRequire("three", "CubeTextureLoader") extern class CubeTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var crossOrigin : String;
	@:optional
	var path : String;
	function load(urls:std.Array<String>, ?onLoad:(texture:CubeTexture) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):CubeTexture;
	function setCrossOrigin(crossOrigin:String):CubeTextureLoader;
	function setPath(path:String):CubeTextureLoader;
}