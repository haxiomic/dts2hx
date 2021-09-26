package global.three;

@:native("THREE.DataTextureLoader") extern class DataTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, onLoad:(dataTexture:DataTexture) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	static var prototype : DataTextureLoader;
}