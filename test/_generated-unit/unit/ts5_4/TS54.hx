package unit.ts5_4;

/**
	TS 5.4: NoInfer<T> utility type, improved narrowing
**/
@:jsRequire("./unit/ts5.4", "TS54") @valueModuleOnly extern class TS54 {
	static function createStreetLight<C:(String)>(colors:Array<C>, defaultColor:C):Void;
	static function first<T>(arr:Array<T>, fallback:T):T;
	static function isDog(animal:unit.ts5_4.ts54.Animal):Bool;
}