package three;
/**
	A loader for loading objects in JSON format.
**/
@:jsRequire("three", "JSONLoader") extern class JSONLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var withCredentials : Bool;
	function load(url:String, ?onLoad:(geometry:Geometry, materials:std.Array<Material>) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.html.IErrorEvent) -> Void):Void;
	function setTexturePath(value:String):Void;
	function parse(json:Any, ?texturePath:String):{
		var geometry : Geometry;
		@:optional
		var materials : std.Array<Material>;
	};
	/**
		Will be called when load starts.
		The default is a function with empty body.
	**/
	var onLoadStart : () -> Void;
	/**
		Will be called while load progresses.
		The default is a function with empty body.
	**/
	var onLoadProgress : () -> Void;
	/**
		Will be called when load completes.
		The default is a function with empty body.
	**/
	var onLoadComplete : () -> Void;
	/**
		default — null.
		If set, assigns the crossOrigin attribute of the image to the value of crossOrigin, prior to starting the load.
	**/
	var crossOrigin : String;
	function extractUrlBase(url:String):String;
	function initMaterials(materials:std.Array<Material>, texturePath:String):std.Array<Material>;
	function createMaterial(m:Material, texturePath:String, ?crossOrigin:String):Bool;
}