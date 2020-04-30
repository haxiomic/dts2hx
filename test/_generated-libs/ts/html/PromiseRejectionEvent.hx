package ts.html;
@:native("PromiseRejectionEvent") extern class PromiseRejectionEvent {
	function new(type:String, eventInitDict:PromiseRejectionEventInit);
	final promise : ts.lib.IPromise<Any>;
	final reason : Any;
	static var prototype : IPromiseRejectionEvent;
}