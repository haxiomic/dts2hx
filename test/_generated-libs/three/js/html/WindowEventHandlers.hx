package js.html;
extern interface WindowEventHandlers {
	var onafterprint : Null<(ev:Event) -> Any>;
	var onbeforeprint : Null<(ev:Event) -> Any>;
	var onbeforeunload : Null<(ev:BeforeUnloadEvent) -> Any>;
	var onhashchange : Null<(ev:HashChangeEvent) -> Any>;
	var onlanguagechange : Null<(ev:Event) -> Any>;
	var onmessage : Null<(ev:MessageEvent) -> Any>;
	var onmessageerror : Null<(ev:MessageEvent) -> Any>;
	var onoffline : Null<(ev:Event) -> Any>;
	var ononline : Null<(ev:Event) -> Any>;
	var onpagehide : Null<(ev:PageTransitionEvent) -> Any>;
	var onpageshow : Null<(ev:PageTransitionEvent) -> Any>;
	var onpopstate : Null<(ev:PopStateEvent) -> Any>;
	var onrejectionhandled : Null<(ev:Event) -> Any>;
	var onstorage : Null<(ev:StorageEvent) -> Any>;
	var onunhandledrejection : Null<(ev:PromiseRejectionEvent) -> Any>;
	var onunload : Null<(ev:Event) -> Any>;
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
}