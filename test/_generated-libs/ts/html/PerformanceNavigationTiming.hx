package ts.html;
/**
	Provides methods and properties to store and retrieve metrics regarding the browser's document navigation events. For example, this interface can be used to determine how much time it takes to load or unload a document.
**/
@:native("PerformanceNavigationTiming") extern class PerformanceNavigationTiming {
	function new();
	final domComplete : Float;
	final domContentLoadedEventEnd : Float;
	final domContentLoadedEventStart : Float;
	final domInteractive : Float;
	final loadEventEnd : Float;
	final loadEventStart : Float;
	final redirectCount : Float;
	final type : String;
	final unloadEventEnd : Float;
	final unloadEventStart : Float;
	function toJSON():Any;
	static var prototype : IPerformanceNavigationTiming;
}