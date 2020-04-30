package ts.html;
@:native("OverflowEvent") extern class OverflowEvent {
	function new();
	final horizontalOverflow : Bool;
	final orient : Float;
	final verticalOverflow : Bool;
	final BOTH : Float;
	final HORIZONTAL : Float;
	final VERTICAL : Float;
	static var prototype : IOverflowEvent;
	@:native("BOTH")
	static final BOTH_ : Float;
	@:native("HORIZONTAL")
	static final HORIZONTAL_ : Float;
	@:native("VERTICAL")
	static final VERTICAL_ : Float;
}