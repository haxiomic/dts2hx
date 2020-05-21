package global.three;

/**
	Base class for implementing loaders.
	
	Events:
			 load
					 Dispatched when the image has completed loading
					 content — loaded image
	
			 error
	
						Dispatched when the image can't be loaded
						message — error message
**/
@:native("THREE.Loader") extern class Loader {
	function new();
	/**
		Will be called when load starts.
		The default is a function with empty body.
	**/
	dynamic function onLoadStart():Void;
	/**
		Will be called while load progresses.
		The default is a function with empty body.
	**/
	dynamic function onLoadProgress():Void;
	/**
		Will be called when load completes.
		The default is a function with empty body.
	**/
	dynamic function onLoadComplete():Void;
	/**
		default — null.
		If set, assigns the crossOrigin attribute of the image to the value of crossOrigin, prior to starting the load.
	**/
	var crossOrigin : String;
	function extractUrlBase(url:String):String;
	function initMaterials(materials:Array<Material>, texturePath:String):Array<Material>;
	function createMaterial(m:Material, texturePath:String, ?crossOrigin:String):Bool;
	static var prototype : Loader;
	static var Handlers : LoaderHandler;
}