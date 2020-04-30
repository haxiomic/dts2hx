package ts.lib;
@:native("RTCStatsReport") extern class RTCStatsReport {
	function new();
	function forEach(callbackfn:(value:Any, key:String, parent:IRTCStatsReport) -> Void, ?thisArg:Any):Void;
	static var prototype : IRTCStatsReport;
}