package js.html;
extern interface OnErrorEventHandlerNonNull {
	@:selfCall
	function call(event:haxe.extern.EitherType<String, Event>, ?source:String, ?lineno:Float, ?colno:Float, ?error:js.lib.Error):Any;
}