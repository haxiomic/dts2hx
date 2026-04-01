package unit.ts4_2;

/**
	TS 4.2: Leading/middle rest elements in tuples, abstract construct signatures
**/
@:jsRequire("./unit/ts4.2", "TS42") @valueModuleOnly extern class TS42 {
	static function makeShape(ctor:unit.ts4_2.ts42.AbstractConstructor<unit.ts4_2.ts42.Shape>):unit.ts4_2.ts42.Shape;
	static function doSomething(value:unit.ts4_2.ts42.BasicPrimitive):Void;
	static final leading : unit.ts4_2.ts42.LeadingRest;
	static final middle : unit.ts4_2.ts42.MiddleRest;
}