package node.timers;
@:jsRequire("timers", "setImmediate") @valueModuleOnly extern class SetImmediate {
	@:overload(function<T>(value:T):js.lib.Promise<T> { })
	static function __promisify__():js.lib.Promise<Void>;
}