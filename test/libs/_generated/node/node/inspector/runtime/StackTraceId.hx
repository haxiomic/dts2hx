package node.inspector.runtime;
/**
	If `debuggerId` is set stack trace comes from another debugger and can be resolved there. This
	allows to track cross-debugger calls. See `Runtime.StackTrace` and `Debugger.paused` for usages.
**/
extern interface StackTraceId {
	var id : String;
	@:optional
	var debuggerId : Null<String>;
}