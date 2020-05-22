package three;

@:jsRequire("three", "WebGLClipping") extern class WebGLClipping {
	function new();
	var uniform : {
		var value : Dynamic;
		var needsUpdate : Bool;
	};
	var numPlanes : Float;
	function init(planes:Array<Dynamic>, enableLocalClipping:Bool, camera:Camera):Bool;
	function beginShadows():Void;
	function endShadows():Void;
	function setState(planes:Array<Dynamic>, clipShadows:Bool, camera:Camera, cache:Bool, fromCache:Bool):Void;
	static var prototype : WebGLClipping;
}