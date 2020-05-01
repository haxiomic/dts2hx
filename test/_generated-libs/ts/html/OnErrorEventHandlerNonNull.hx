package ts.html;
extern typedef OnErrorEventHandlerNonNull = {
	@:selfCall
	function call(event:ts.AnyOf2<String, IEvent>, ?source:String, ?lineno:Float, ?colno:Float, ?error:ts.lib.IError):Any;
};