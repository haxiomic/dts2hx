package typescript.ts;


/**
ES6 Map interface, only read methods included.

Generated from: test-definitions/typescript/typescript-extended.d.ts:37:5
**/

typedef ReadonlyMap<T> = {
	function get(key: String): Null<T>;
	function has(key: String): Bool;
	function forEach(action: (value: T, key: String) -> Void): Void;
	final size: Float;
	function keys(): typescript.ts.Iterator<String>;
	function values(): typescript.ts.Iterator<T>;
	function entries(): typescript.ts.Iterator<Array<Any>>;
}

