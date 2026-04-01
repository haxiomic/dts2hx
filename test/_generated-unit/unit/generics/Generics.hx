package unit.generics;

/**
	Generics coverage: constraints, defaults, complex bounds,
	conditional types, utility types.
**/
@:jsRequire("./unit/generics", "Generics") @valueModuleOnly extern class Generics {
	static function loggingIdentity<T:(unit.generics.generics.Lengthwise)>(arg:T):T;
	static function getProperty<T, K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(obj:T, key:K):Dynamic;
	static function multiConstrain<T:(unit.generics.generics.Lengthwise & {
		var name : String;
	})>(arg:T):T;
}