package ts.html;
@:native("RTCStatsEvent") extern class RTCStatsEvent {
	function new(type:String, eventInitDict:RTCStatsEventInit);
	final report : ts.lib.IRTCStatsReport;
	static var prototype : IRTCStatsEvent;
}