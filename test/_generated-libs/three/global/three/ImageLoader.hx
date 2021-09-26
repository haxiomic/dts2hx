package global.three;

/**
	A loader for loading an image.
	Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
**/
@:native("THREE.ImageLoader") extern class ImageLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var crossOrigin : String;
	var withCredentials : String;
	var path : String;
	/**
		Begin loading from url
	**/
	function load(url:String, ?onLoad:(image:js.html.ImageElement) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):js.html.ImageElement;
	function setCrossOrigin(crossOrigin:String):ImageLoader;
	function setWithCredentials(value:String):ImageLoader;
	function setPath(value:String):ImageLoader;
	static var prototype : ImageLoader;
}