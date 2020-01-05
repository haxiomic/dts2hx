package typescript.ts;


/**
Array that is only intended to be pushed to, never read.

Generated from: test-definitions/typescript/typescript-extended.d.ts:63:5
**/
@:native('ts.Push')
extern interface Push<T> {
	function push(values: haxe.extern.Rest<T>): Void;
}

