package node.events;
@:jsRequire("events", "EventEmitter") extern class EventEmitter extends node.Events {
	static function listenerCount(emitter:EventEmitter, event:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	static var defaultMaxListeners : Float;
}