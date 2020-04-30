package ts.html;
/**
	Events measuring progress of an underlying process, like an HTTP request (for an XMLHttpRequest, or the loading of the underlying resource of an <img>, <audio>, <video>, <style> or <link>).
**/
@:native("ProgressEvent") extern class ProgressEvent<T> {
	function new(type:String, ?eventInitDict:ProgressEventInit);
	final lengthComputable : Bool;
	final loaded : Float;
	/**
		Returns the object to which event is dispatched (its target).
	**/
	final target : Null<T>;
	final total : Float;
	static var prototype : IProgressEvent<IEventTarget>;
}