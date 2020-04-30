package ts.html;
/**
	A legacy interface kept for backwards compatibility and contains properties that offer performance timing information for various events which occur during the loading and use of the current page. You get a PerformanceTiming object describing your page using the window.performance.timing property.
**/
extern typedef IPerformanceTiming = {
	final connectEnd : Float;
	final connectStart : Float;
	final domComplete : Float;
	final domContentLoadedEventEnd : Float;
	final domContentLoadedEventStart : Float;
	final domInteractive : Float;
	final domLoading : Float;
	final domainLookupEnd : Float;
	final domainLookupStart : Float;
	final fetchStart : Float;
	final loadEventEnd : Float;
	final loadEventStart : Float;
	final navigationStart : Float;
	final redirectEnd : Float;
	final redirectStart : Float;
	final requestStart : Float;
	final responseEnd : Float;
	final responseStart : Float;
	final secureConnectionStart : Float;
	final unloadEventEnd : Float;
	final unloadEventStart : Float;
	function toJSON():Any;
};