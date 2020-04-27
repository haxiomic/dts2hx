package three;
@:jsRequire("three", "WebGLClipping") extern class WebGLClipping {
	var uniform : { var value : Any; var needsUpdate : Bool; };
	var numPlanes : Float;
	function init(planes:std.Array<Any>, enableLocalClipping:Bool, camera:Camera):Bool;
	function beginShadows():Void;
	function endShadows():Void;
	function setState(planes:std.Array<Any>, clipShadows:Bool, camera:Camera, cache:Bool, fromCache:Bool):Void;
}