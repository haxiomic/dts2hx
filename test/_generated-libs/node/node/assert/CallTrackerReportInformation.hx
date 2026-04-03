package node.assert;

@:forward
abstract CallTrackerReportInformation(CallTrackerReportInformationTypedef) from CallTrackerReportInformationTypedef to CallTrackerReportInformationTypedef {
	/**
		The name of the function that is wrapped.
	**/
	public var operator_(get, set):String;
	inline function get_operator_():String return js.Syntax.field(cast this, 'operator');
	inline function set_operator_(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'operator', v); return v; }
}
