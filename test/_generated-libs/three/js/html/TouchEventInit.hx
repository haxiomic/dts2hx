package js.html;
extern interface TouchEventInit extends EventModifierInit {
	@:optional
	var changedTouches : std.Array<Touch>;
	@:optional
	var targetTouches : std.Array<Touch>;
	@:optional
	var touches : std.Array<Touch>;
}