package typescript.ts;


/**
Map where keys are `__String`s.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2289:5
**/

typedef UnderscoreEscapedMap<T> = typescript.ts.ReadonlyUnderscoreEscapedMap<T> & {
	function set(key: typescript.ts.__String, value: T): typescript.ts.UnderscoreEscapedMap<T>;
	function delete(key: typescript.ts.__String): Bool;
	function clear(): Void;
}

