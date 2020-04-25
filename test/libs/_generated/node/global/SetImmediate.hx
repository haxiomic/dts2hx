package global;
@:native("setImmediate") extern class SetImmediate {
	@:overload(function<T>(value:T):js.lib.Promise<T> { })
	static function __promisify__():js.lib.Promise<Void>;
}