package unit.interface_;

/**
	An interface which has no fields, only function signatures. This typically means this is functionally used as a function type
	
	See https://github.com/haxiomic/dts2hx/issues/73
**/
typedef FunctionTypeInterface<T> = ts.AnyOf2<(err:Dynamic, data:T) -> Void, (err:Error) -> Void>;