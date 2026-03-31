package unit.generics;

/**
	Generics coverage: constraints, defaults, complex bounds,
	conditional types, utility types.
**/
@:jsRequire("./unit/generics", "Generics") @valueModuleOnly extern class Generics {
	static function loggingIdentity<T>(arg:T):T;
	static function getProperty<T, K>(obj:T, key:K):Dynamic;
	static function multiConstrain<T>(arg:T):T;
}