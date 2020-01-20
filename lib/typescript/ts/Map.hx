package typescript.ts;


/**
ES6 Map interface.

Generated from: test-definitions/typescript/typescript-extended.d.ts:57:5
**/

typedef Map<T> = typescript.ts.ReadonlyMap<T> & {
	function set(key: String, value: T): typescript.ts.Map<T>;
	function delete(key: String): Bool;
	function clear(): Void;
}

