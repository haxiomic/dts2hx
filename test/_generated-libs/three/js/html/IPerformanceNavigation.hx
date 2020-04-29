package js.html;
/**
	The legacy PerformanceNavigation interface represents information about how the navigation to the current document was done.
**/
extern typedef IPerformanceNavigation = {
	final redirectCount : Float;
	final type : Float;
	function toJSON():Any;
	final TYPE_BACK_FORWARD : Float;
	final TYPE_NAVIGATE : Float;
	final TYPE_RELOAD : Float;
	final TYPE_RESERVED : Float;
};