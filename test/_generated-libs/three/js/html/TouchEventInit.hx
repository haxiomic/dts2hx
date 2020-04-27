package js.html;
extern typedef TouchEventInit = EventModifierInit & { @:optional
	var changedTouches : std.Array<Touch>; @:optional
	var targetTouches : std.Array<Touch>; @:optional
	var touches : std.Array<Touch>; };