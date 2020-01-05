package typescript.ts;


/**
ES6 Map interface.

Generated from: test-definitions/typescript/typescript-extended.d.ts:47:5
**/
@:native('ts.Map')
extern interface Map<T> extends typescript.ts.ReadonlyMap<T> {
	function set(key: String, value: T): typescript.ts.Map<T>;
	function delete(key: String): Bool;
	function clear(): Void;
}

