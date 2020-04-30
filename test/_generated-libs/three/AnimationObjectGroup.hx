package three;
@:jsRequire("three", "AnimationObjectGroup") extern class AnimationObjectGroup {
	function new(args:haxe.extern.Rest<Any>);
	var uuid : String;
	var stats : {
		var bindingsPerObject : Float;
		var objects : {
			var total : Float;
			var inUse : Float;
		};
	};
	function add(args:haxe.extern.Rest<Any>):Void;
	function remove(args:haxe.extern.Rest<Any>):Void;
	function uncache(args:haxe.extern.Rest<Any>):Void;
}