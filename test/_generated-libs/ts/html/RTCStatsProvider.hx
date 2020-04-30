package ts.html;
@:native("RTCStatsProvider") extern class RTCStatsProvider {
	function new();
	function getStats():ts.lib.IPromise<ts.lib.IRTCStatsReport>;
	function msGetStats():ts.lib.IPromise<ts.lib.IRTCStatsReport>;
	static var prototype : IRTCStatsProvider;
}