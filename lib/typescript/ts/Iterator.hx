package typescript.ts;


/**
ES6 Iterator type.

Generated from: test-definitions/typescript/typescript-extended.d.ts:53:5
**/

typedef Iterator<T> = {
	function next(): haxe.extern.EitherType<{	var value: T; 	@:optional var done: Bool;}, {	var value: Any; 	var done: Bool;}>;
}

