package typescript.ts;


/**
ReadonlyMap where keys are `__String`s.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2279:5
**/

typedef ReadonlyUnderscoreEscapedMap<T> = {
	function get(key: typescript.ts.__String): Null<T>;
	function has(key: typescript.ts.__String): Bool;
	function forEach(action: (value: T, key: typescript.ts.__String) -> Void): Void;
	final size: Float;
	function keys(): typescript.ts.Iterator<typescript.ts.__String>;
	function values(): typescript.ts.Iterator<T>;
	function entries(): typescript.ts.Iterator<Array<Any>>;
}

