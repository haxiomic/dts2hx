package ts.html;
/**
	The legacy PerformanceNavigation interface represents information about how the navigation to the current document was done.
**/
@:native("PerformanceNavigation") extern class PerformanceNavigation {
	function new();
	final redirectCount : Float;
	final type : Float;
	function toJSON():Dynamic;
	final TYPE_BACK_FORWARD : Float;
	final TYPE_NAVIGATE : Float;
	final TYPE_RELOAD : Float;
	final TYPE_RESERVED : Float;
	static var prototype : IPerformanceNavigation;
	@:native("TYPE_BACK_FORWARD")
	static final TYPE_BACK_FORWARD_ : Float;
	@:native("TYPE_NAVIGATE")
	static final TYPE_NAVIGATE_ : Float;
	@:native("TYPE_RELOAD")
	static final TYPE_RELOAD_ : Float;
	@:native("TYPE_RESERVED")
	static final TYPE_RESERVED_ : Float;
}