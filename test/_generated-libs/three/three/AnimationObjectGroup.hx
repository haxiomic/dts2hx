package three;
@:jsRequire("three", "AnimationObjectGroup") extern class AnimationObjectGroup {
	function new(args:std.Array<Any>);
	var uuid : String;
	var stats : {
		var bindingsPerObject : Float;
		var objects : {
			var total : Float;
			var inUse : Float;
		};
	};
	function add(args:std.Array<Any>):Void;
	function remove(args:std.Array<Any>):Void;
	function uncache(args:std.Array<Any>):Void;
}