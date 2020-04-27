package three;
/**
	A loader for loading objects in JSON format.
**/
@:jsRequire("three", "JSONLoader") extern class JSONLoader extends Loader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var withCredentials : Bool;
	function load(url:String, ?onLoad:(geometry:Geometry, materials:std.Array<Material>) -> Void, ?onProgress:(event:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function setTexturePath(value:String):Void;
	function parse(json:Any, ?texturePath:String):{ var geometry : Geometry; @:optional
	var materials : std.Array<Material>; };
}