package global.three;

/**
	A loader for loading objects in JSON format.
**/
@:native("THREE.JSONLoader") extern class JSONLoader extends Loader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var withCredentials : Bool;
	function load(url:String, ?onLoad:(geometry:Geometry, materials:Array<Material>) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function setTexturePath(value:String):Void;
	function parse(json:Dynamic, ?texturePath:String):{
		var geometry : Geometry;
		@:optional
		var materials : Array<Material>;
	};
	static var prototype : JSONLoader;
}