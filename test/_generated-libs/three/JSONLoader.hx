package three;
/**
	A loader for loading objects in JSON format.
**/
@:jsRequire("three", "JSONLoader") extern class JSONLoader extends Loader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var withCredentials : Bool;
	function load(url:String, ?onLoad:(geometry:Geometry, materials:Array<Material>) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.html.IErrorEvent) -> Void):Void;
	function setTexturePath(value:String):Void;
	function parse(json:Dynamic, ?texturePath:String):{
		var geometry : Geometry;
		@:optional
		var materials : Array<Material>;
	};
}