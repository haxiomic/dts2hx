package three;
@:jsRequire("three", "WebGLClipping") extern class WebGLClipping {
	var uniform : {
		var value : Dynamic;
		var needsUpdate : Bool;
	};
	var numPlanes : Float;
	function init(planes:std.Array<Dynamic>, enableLocalClipping:Bool, camera:Camera):Bool;
	function beginShadows():Void;
	function endShadows():Void;
	function setState(planes:std.Array<Dynamic>, clipShadows:Bool, camera:Camera, cache:Bool, fromCache:Bool):Void;
}