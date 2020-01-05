package typescript.ts;


/**
Map where keys are `__String`s.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2279:5
**/
@:native('ts.UnderscoreEscapedMap')
extern interface UnderscoreEscapedMap<T> extends typescript.ts.ReadonlyUnderscoreEscapedMap<T> {
	function set(key: typescript.ts.__String, value: T): typescript.ts.UnderscoreEscapedMap<T>;
	function delete(key: typescript.ts.__String): Bool;
	function clear(): Void;
}

