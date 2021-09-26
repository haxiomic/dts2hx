package global.three;

@:native("THREE.CubeTextureLoader") extern class CubeTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var crossOrigin : String;
	@:optional
	var path : String;
	function load(urls:Array<String>, ?onLoad:(texture:CubeTexture) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):CubeTexture;
	function setCrossOrigin(crossOrigin:String):CubeTextureLoader;
	function setPath(path:String):CubeTextureLoader;
	static var prototype : CubeTextureLoader;
}