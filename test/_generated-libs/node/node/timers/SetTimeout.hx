package node.timers;
@:jsRequire("timers", "setTimeout") @valueModuleOnly extern class SetTimeout {
	@:overload(function<T>(ms:Float, value:T):js.lib.Promise<T> { })
	static function __promisify__(ms:Float):js.lib.Promise<Void>;
}