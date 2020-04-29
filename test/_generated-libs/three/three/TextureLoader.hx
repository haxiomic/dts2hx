package three;
/**
	Class for loading a texture.
	Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
**/
@:jsRequire("three", "TextureLoader") extern class TextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var crossOrigin : String;
	var withCredentials : String;
	var path : String;
	/**
		Begin loading from url
	**/
	function load(url:String, ?onLoad:(texture:Texture) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Texture;
	function setCrossOrigin(crossOrigin:String):TextureLoader;
	function setWithCredentials(value:String):TextureLoader;
	function setPath(path:String):TextureLoader;
}